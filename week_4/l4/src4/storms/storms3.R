# Introduce ends_with

select(
  storms,
  !c(lat, long, pressure, ends_with("diameter"))
)
