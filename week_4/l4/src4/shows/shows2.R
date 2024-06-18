# Clean up leading and trailing whitespace

shows <- read.csv("shows.csv")

shows$show <- str_trim(shows$show)

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
