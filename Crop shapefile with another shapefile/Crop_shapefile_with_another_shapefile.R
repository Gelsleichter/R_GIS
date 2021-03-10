#############################################################################
### Crop shapefile with another shapefile ::: https://rdrr.io/cran/raster/man/crop.html
library(raster)
# library(rgdal) # if require
# library(rgeos) # if require
### load a shape from raster package
luxembourg <- shapefile(system.file("external/lux.shp", package="raster"))
plot(luxembourg) 
### draw a simple shape
another_shape <- as(extent(6, 6.4, 49.75, 50), 'SpatialPolygons')
plot(another_shape, add=, border="red", lwd=3)
### crop (SpatialPolygon) luxembourg with another_shape
luxembourg_clip <- crop(luxembourg, another_shape) 
plot(luxembourg_clip, add=T, col=4) ### plot on 
plot(luxembourg_clip, add=F, col=3) ### just plot
