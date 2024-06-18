# Find most powerful hurricane for each year

hurricanes <- read.csv("hurricanes.csv")

hurricanes |>
  group_by(year) |>
  arrange(desc(wind)) |>
  slice_head()
