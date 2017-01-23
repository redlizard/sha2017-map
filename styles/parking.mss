@area-smoothing: 0.1;

#terrain_parking_off_map_water [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #0c6ccc;
}

#terrain_parking_off_map_water [subclasses='AcDbEntity:AcDbLine'],
#terrain_parking_off_map_water [subclasses='AcDbEntity:AcDbPolyline']{
  line-color: #063A6E;
  line-width: 2;
}

#terrain_parking_off_map_bank [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #BDB38A;
}

#terrain_parking_off_map_unpaved_road [subclasses='AcDbEntity:AcDbHatch']{
  line-color: #7F5840;
  line-width: 1;
  polygon-fill: #D1B5A3;
}

#terrain_parking_off_map_farmland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #fbecd7;
}


#terrain_parking_off_map_field [subclasses='AcDbEntity:AcDbLine'],
#terrain_parking_off_map_field [subclasses='AcDbEntity:AcDbPolyline']{
  line-color: #0000ff;
  line-width: 1;
}

#terrain_parking_off_map_field [subclasses='AcDbEntity:AcDbHatch']{
  polygon-fill: #00ffff;
}
