#########################################################################################
### From SpatialPointsDataFrame to SpatialPolygonsDataFrame
### Creating a SpatialPointsDataFrame object
library(sp)
library(raster)

### Example data: creating a SpatialPointsDataFrame object
x = c(1,2,5,4,3)
y = c(3,2,3,6,6)
df_points <- as.data.frame(cbind(x,y))
S <- SpatialPoints(cbind(x,y))
# S <- SpatialPoints(list(x,y))
# S <- SpatialPoints(data.frame(x,y))
S
plot(S)
spdf <- SpatialPointsDataFrame(S, df_points)
spdf
plot(spdf)
# crs(spdf) <- ("+proj=utm +zone=23 +south +datum=WGS84 +units=m +no_defs") ### add a crs

### Convert the SpatialPointsDataFrame to SpatialPolygons
(Sr1 = Polygon(spdf[,1:2]))
(Srs1 = Polygons(list(Sr1), "s1"))
(SpP = SpatialPolygons(list(Srs1), 1:1, proj4string= crs("+proj=utm +zone=23 +south +datum=WGS84 +units=m +no_defs"))) 
plot(SpP, col = 3:3, pbg="white", add=T) 
SpP ### can not write as shapefile

### Convert the SpatialPolygons to SpatialPolygonsDataFrame
shape_pol <- SpatialPolygonsDataFrame(SpP, match.ID=F, data= data.frame(x=spdf[1:1,1], y=spdf[1:1,2]))
shape_pol ### can be write as shapefile
plot(shape_pol, col = 4, add=T)

### write shapefile
library(rgdal)
writeOGR(shape_pol, paste0(getwd(), "/Output_shapes"), "p_to_shape_pol", driver="ESRI Shapefile")
