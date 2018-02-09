library(dplyr)
library(devtools)
library(stringi)

# Read in and clean up `county_centers`
county_points <- read.csv(paste0("municipalities.csv"),as.is = TRUE) %>%
  mutate(COUNAME = stri_trans_general(Mun_Name, "latin-ascii")) %>%
  select(Mun_Name, lat, lon, Mun_Code) %>%
  rename(state_name = Mun_Name,
         latitude = lat, longitude = lon) %>%
  rename(gridid = Mun_Code,
         glat = latitude,
         glon = longitude) %>%
  select(gridid, glat, glon)

use_data(county_points, overwrite = TRUE)
