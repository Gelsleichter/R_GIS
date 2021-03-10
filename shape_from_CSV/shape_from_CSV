##############################
### Create shape from CSV: Source and data https://www.neonscience.org/resources/learning-hub/tutorials/dc-csv-shapefile-r
### CSV to shapefile polygon
# Read the .csv file
locations_HARV <- read.csv("NEON-DS-Site-Layout-Files/HARV/HARV_PlotLocations.csv", stringsAsFactors = FALSE)

# note that the easting and northing columns are in columns 1 and 2
locations_HARV <- SpatialPointsDataFrame(locations_HARV[,1:2],
                                         locations_HARV,    #the R object to convert
                                         proj4string = crs("+proj=utm +zone=18 +datum=WGS84 +units=m +no_defs"))   # assign a CRS 
locations_HARV
plot(locations_HARV)
### write a shapefile
writeOGR(locations_HARV, paste0(getwd(), "/Output_shapes"), "Locations_HARV", driver="ESRI Shapefile")
