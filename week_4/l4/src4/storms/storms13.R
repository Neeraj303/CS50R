# Find number of hurricanes per year

hurricanes <- read.csv("hurricanes.csv")

hurricanes |>
  group_by(year) |>
  summarize(hurricanes = n())
