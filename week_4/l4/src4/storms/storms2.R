# Remove selected columns

dplyr::select(
  storms,
  !c(lat, long, pressure, tropicalstorm_force_diameter, hurricane_force_diameter)
)
