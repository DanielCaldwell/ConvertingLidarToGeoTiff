# next convert the lidar points to a raster grid, we are getting the Z Standard values as well as filling in any gaps. 
resolution=0.2

points2grid -i DEMO_DATA_RIEGL_VUX-1_CASTLE+FOREST_01.las -o castle_forest_1.grid --std --resolution $resolution
points2grid -i DEMO_DATA_RIEGL_VUX-1_CASTLE+FOREST_02.las -o castle_forest_2.grid --std --resolution $resolution
points2grid -i DEMO_DATA_RIEGL_VUX-1_CASTLE+FOREST_03.las -o castle_forest_3.grid --std --resolution $resolution
points2grid -i "DEMO_DATA_RIEGL_VUX-1_POWERLINE _01.las" -o powerline_1.grid --std --resolution $resolution
points2grid -i DEMO_DATA_RIEGL_VUX-1_VALLEY_01.las -o valley_1.grid --std --resolution $resolution
points2grid -i DEMO_DATA_RIEGL_VUX-1_VALLEY_02.las -o valley_2.grid --std --resolution $resolution

