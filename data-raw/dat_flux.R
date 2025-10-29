library(data.table)

st_flux341 <- fread("data-raw/st_flux341.csv")
sp <- df2sf(st_flux341)
usethis::use_data(st_flux341, overwrite = TRUE)
