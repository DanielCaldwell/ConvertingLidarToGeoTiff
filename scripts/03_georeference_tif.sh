# now we have a tiff but the coordinate system is messed up. Let's warp it to WGS_1984 (epsg:4326)
# castle_forest is in UTM North U33 (epsg:32633) we get this from the documentation, not the data. 
# using liblas' lasinfo tool, you can see that the coordinate system is messed up. 
# see more info on the zone here: http://spatialreference.org/ref/epsg/wgs-84-utm-zone-33n/
gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 castle_forest_1.grid.std.tif castle_forest_1_4326.tif
gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 castle_forest_2.grid.std.tif castle_forest_2_4326.tif
gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 castle_forest_3.grid.std.tif castle_forest_3_4326.tif

gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 powerline_1.grid.std.tif powerline_1_4326.tif

gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 valley_1.grid.std.tif valley_1_4326.tif
gdalwarp -s_srs epsg:32633 -t_srs epsg:4326 valley_2.grid.std.tif valley_2_4326.tif
