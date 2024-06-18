# Find only rows about hurricanes, and arrange highest wind speed to least

storms |>
  select(!c(lat, long, pressure, ends_with("force_diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind))
