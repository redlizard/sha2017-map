@area-smoothing: 0.1;

#meta_border, #meta_legend {
  line-color: black;
  line-width: 1;
}

#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #0c6ccc;
  polygon-smooth: @area-smoothing;
}

#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbLine'],
#terrain_water_ditches_and_ponds [subclasses='AcDbEntity:AcDbPolyline']{
  line-color: #063A6E;
  line-width: 2;
}

#terrain_water_nuldernauw {
  polygon-fill: #0c6ccc;
  polygon-smoth: @area-smoothing;
}

/*
#terrain_water_ditches_and_ponds_bank {
  line-color: #733D18;
  line-width: 2;
  line-opacity: 0.5;
}
*/

#terrain_scrubland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #cdebb0;
  polygon-smooth: @area-smoothing;
}

#terrain_woodland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #2B7C20;
  polygon-smooth: @area-smoothing;
}

#terrain_roads_main_road {
  line-color: #333;
  line-width: 1;
  polygon-fill: #cccccc;
}

#terrain_roads_paved_road {
  line-color: #333;
  line-width: 1;
  polygon-fill: #cccccc;
}

#terrain_roads_unpaved_road {
  line-color: #7F5840;
  line-width: 1;
  polygon-fill: #D1B5A3;
}
