# Find only rows about hurricanes

filter(
  select(
    storms,
    !c(lat, long, pressure, ends_with("diameter"))
  ),
  status == "hurricane"
)
