# Introduce pipe operator

storms |>
  select(!c(lat, long, pressure, ends_with("diameter"))) |>
  filter(status == "hurricane")