library(dplyr)
library(devtools)
library(stringi)

# Read in and clean up `county_centers`
county_points <- read.csv("municipality.csv")

use_data(county_points, overwrite = TRUE)
