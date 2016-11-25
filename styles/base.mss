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

#terrain_water_ditches_and_ponds_bank [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #BDB38A;
}

#terrain_water_nuldernauw {
  polygon-fill: #0c6ccc;
}

#terrain_water_nuldernauw_reed {
  polygon-fill: #0CCCB9;
  polygon-smooth: @area-smoothing;
}

#terrain_dike {
  polygon-fill: #99B084;
}
#terrain_dike::highlight {
  line-color: #99B084;
  line-opacity: 0.2;
  line-width: 6;
}

/*
#terrain_water_ditches_and_ponds_bank {
  line-color: #733D18;
  line-width: 2;
  line-opacity: 0.5;
}
*/

#terrain_farmland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #fbecd7;
}

#terrain_scrubland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #AAD1A5;
  polygon-smooth: @area-smoothing;
}

#terrain_woodland [subclasses='AcDbEntity:AcDbHatch'] {
  polygon-fill: #9FD199;
  /*
  polygon-pattern-file: url('markers/forest.png');
  polygon-pattern-alignment: global;
  */
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

#terrain_buildings {
  polygon-fill: #d9d0c9;
  line-color: darken(#d9d0c9, 15%);
  line-width: .75;
}

#terrain_roads_gates {
  line-color: #DE9A00;
  line-width: 4;
}

#meta_border::fill {
  polygon-fill: #cdebb0;
}


