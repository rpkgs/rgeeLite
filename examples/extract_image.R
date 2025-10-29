devtools::load_all()
# library(rgee)
library(rgeeLite)
library(sf)
library(data.table)


ee_Init()

df2sf <- function(d, coords = c("lon", "lat"), crs = 4326, ...) {
  st_as_sf(d, coords = coords, crs = crs, ...)
}

# rgeeLite::ee$ImageCollection$Dataset
dataset <- ee$ImageCollection$Dataset
imgcol <- dataset$ECMWF_ERA5_LAND_MONTHLY_AGGR$limit(1)

sp = df2sf(st_flux341[1:10, ])
r = ee_extract(imgcol, sp) # 实时的获取数据
