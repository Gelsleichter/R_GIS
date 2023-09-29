#############################################################################
### Crop shapefile with another shapefile ::: https://rdrr.io/cran/raster/man/crop.html
### With Raster package
library(raster)
### load a shape from raster package
luxembourg_shp <- shapefile(system.file("external/lux.shp", package="raster"))
plot(luxembourg_shp) 
### draw a simple shape
another_shape <- as(extent(6, 6.4, 49.75, 50), 'SpatialPolygons')
plot(another_shape, add=T, border="red", lwd=1)
### crop (SpatialPolygon) luxembourg with another_shape
luxembourg_clip <- crop(luxembourg_shp, another_shape) 
plot(luxembourg_clip, add=T, col=4) ### plot on 
plot(luxembourg_clip, add=F, col=3) ### just plot

################ Crop shapefile with another shapefile With "terra"
library(terra)
library(raster)
lux_shp <- vect(system.file("ex/lux.shp", package = "terra"))
plot(lux_shp)
another_shape <- as(extent(6, 6.4, 49.75, 50), 'SpatialPolygons')
plot(another_shape, add=T, border="red", lwd=1)
### Clip Luxembourg shapefile with another_shape
lux_clip <- crop(lux_shp, another_shape) 
plot(lux_clip, add=T, col=4) ### plot on 
plot(lux_clip, add=F, col=3) ### just plot

################ Crop Raster with shapefile With "terra"
lux_rast <- rast(system.file("ex/elev.tif", package = "terra"))
plot(lux_rast)
another_shape <- as(extent(6, 6.4, 49.75, 50), 'SpatialPolygons')
plot(another_shape, add=T, border="red", lwd=1)
### Clip Luxembourg shapefile with another_shape
lux_clip <- crop(lux_rast, another_shape)
plot(lux_clip, add=T) ### plot on 
plot(lux_clip, add=F) ### just plot



