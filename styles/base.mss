#border_line /*, #meta_legend*/ {
  line-color: black;
  line-width: 1;
}

#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #0c6ccc;
}

#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbLine'],
#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbPolyline']{
  line-color: #063A6E;
  line-width: 2;
}

#terrain_water_ditches_and_ponds_bank [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #BDB38A;
}

#terrain_water_nuldernauw {
  polygon-fill: #0c6ccc;
}

#terrain_water_nuldernauw_reed {
  polygon-fill: #0CCCB9;
}

#terrain_dike {
  polygon-fill: #ADBE9C;
}

#terrain_farmland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #fbecd7;
}

#terrain_scrubland [subclasses='AcDbEntity:AcDbHatch'],
#terrain_woodland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #91AD76;
}

#terrain_sand {
  polygon-fill: darken(#ffff00, 15%);
}

#terrain_concrete {
  line-color: #bbb;
  line-width: 1;
  polygon-fill: #ddd;
}

#terrain_roads_main_road [subclasses='AcDbEntity:AcDbHatch']{
  line-color: #333;
  line-width: 1;
  polygon-fill: #cccccc;
}

#terrain_roads_paved_road [subclasses='AcDbEntity:AcDbHatch']{
  line-color: #333;
  line-width: 1;
  polygon-fill: #cccccc;
}

#terrain_roads_unpaved_road [subclasses='AcDbEntity:AcDbHatch']{
  line-color: #7F5840;
  line-width: 1;
  polygon-fill: #D1B5A3;
}

#terrain_roads_firelanes {
  line-color: #ff8000;
  line-width: 1.5;
}

#terrain_roads_road_plates [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #aa8a6a;
}

#terrain_wharf, #terrain_wharf_mooring_posts {
  polygon-fill: #804000;
  line-color: darken(#804000, 15%);
  line-width: 1.5;
}

#terrain_buildings {
  polygon-fill: #d9d0c9;
  line-color: darken(#d9d0c9, 15%);
  line-width: .75;
}

/*
#terrain_roads_gates {
  line-color: #DE9A00;
  line-width: 4;
}
*/

#terrain_roads_bridges {
  line-color: #ff0000;
  line-width: 3;
}

#terrain_parking_field [subclasses='AcDbEntity:AcDbLine'],
#terrain_parking_field [subclasses='AcDbEntity:AcDbPolyline']{
  line-color: #0000ff;
  line-width: 1;
}

#terrain_parking_field [subclasses='AcDbEntity:AcDbHatch']{
  polygon-fill: #00ffff;
}


#terrain_fields_campground [subclasses='AcDbEntity:AcDbHatch']{
  polygon-fill: #C8FE96;
}

#terrain_fence {
  line-color: #800000;
  line-width: 3;
}

#meta_border::fill {
  polygon-fill: #E7F9C8;
}


