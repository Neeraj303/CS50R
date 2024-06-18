# CRAN comprehensive R archive network
#dplyr package to manipulate data
#  select, filter, arrange, distinct, group_by, summarize (to select certain row)

library('dplyr') # to load 
storms # the storms data, tibble

dplyr::select(
  storms, 
  !c(lat, long, pressure, tropicalstorm_force_diameter, hurricane_force_diameter)) # use select function from the dplyr package
