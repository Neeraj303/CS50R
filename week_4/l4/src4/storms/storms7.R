# If two hurricanes have same wind speed, sort alphabetically by name

storms |>
  select(!c(lat, long, pressure, ends_with("force_diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind), name)
