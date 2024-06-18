# Show ungroup

hurricanes <- read.csv("hurricanes.csv")

hurricanes |>
  group_by(year) |>
  slice_max(order_by = wind) |>
  ungroup()
