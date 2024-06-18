# Clean up capitalization

shows <- read.csv("shows.csv")

shows$show <- shows$show |>
  str_trim() |>
  str_squish() |>
  str_to_title()

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
