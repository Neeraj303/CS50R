# Write subset of columns to a CSV

hurricanes <- storms |>
  select(!c(lat, long, pressure, ends_with("force_diameter"))) |>
  filter(status == "hurricane") |>
  arrange(desc(wind), name) |>
  distinct(name, year, .keep_all = TRUE)

hurricanes |>
  select(c(year, name, wind)) |>
  write.csv("hurricanes.csv", row.names = FALSE)
