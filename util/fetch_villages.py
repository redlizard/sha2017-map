""" Fetch village data from the wiki and spit out GeoJSON.
    Resize and locally cache images for icons.
"""
import requests
import geojson
import io
import sys
from os import path, mkdir
from geojson import Feature, Point, FeatureCollection
from PIL import Image

img_prefix = 'https://map.sha2017.org/village-img'
wiki_base = 'https://wiki.sha2017.org'

# In the past SMW  has generated invalid JSON. If it's still
# going to do that we can fix it in here with ugly regexes.
# Previous regexes required (PHP):
# $data = preg_replace('/"serializer": ".*",/', '', $data);
# $data = preg_replace('/u([0-9A-F]{3,5})/', '\u\1', $data);
# $data = preg_replace('/\\\\012/', '', $data);

if len(sys.argv) != 2:
    print("Usage: fetch_villages.py /path/to/webroot")
    sys.exit(1)

img_output = path.join(path.abspath(sys.argv[1]), 'village-img')
try:
    mkdir(img_output)
except FileExistsError:
    pass
layer_output = path.join(path.abspath(sys.argv[1]), 'vector', 'villages.json')

url = wiki_base + \
    '/w/Special:Ask/format%3Djson/limit%3D500/link%3Dall/headers%3Dshow/' \
    'searchlabel%3DJSON/class%3Dsortable-20wikitable-20smwtable/offset%3D/' \
    '-5B-5BCategory:Village-5D-5D/-3FHas-20location/-3FHas-20description/' \
    '-3FHas-20image-20url/mainlabel%3D/prettyprint%3Dtrue/unescape%3Dtrue'


def get_image(title, name):
    # Fetch image metadata from wiki
    url = wiki_base + '/api.php'
    req = requests.get(url, params={'action': 'query', 'titles': title,
                                    'prop': 'imageinfo', 'iiprop': 'url',
                                    'format': 'json'})
    data = req.json()
    if '-1' in data['query']['pages']:
        # No image
        return None

    pageid = list(data['query']['pages'].keys())[0]
    image_url = data['query']['pages'][pageid]['imageinfo'][0]['url']

    # Fetch image and resize (OL3 doesn't support resizing icons
    # in-browser and it's ugly anyway)
    req = requests.get(image_url)
    img = Image.open(io.BytesIO(req.content))
    size = img.size
    ratio = 32 / max(size)
    img.thumbnail((int(size[0] * ratio), int(size[1] * ratio)))

    name = name.replace(' ', '_')
    img.save(path.join(img_output, name) + '.png')
    return '%s/%s.png' % (img_prefix, name)


data = requests.get(url).json()
features = []
for pagename, info in data['results'].items():
    location = info['printouts']['Has location']
    if len(location) > 0:
        name = pagename.replace('Village:', '')
        image = get_image('File:Village-%s.png' % name, name)
        point = Point((location[0]['lon'], location[0]['lat']))
        features.append(Feature(geometry=point,
                                properties={
                                    'name': name,
                                    'pagename': pagename,
                                    'description': info['printouts']['Has description'],
                                    'image_url': image
                                }))

result = FeatureCollection(features)

with open(layer_output, 'w') as f:
    geojson.dump(result, f)
