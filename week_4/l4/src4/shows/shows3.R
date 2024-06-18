# Clean up inner whitespace

shows <- read.csv("shows.csv")

shows$show <- shows$show |>
  str_trim() |>
  str_squish()

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
