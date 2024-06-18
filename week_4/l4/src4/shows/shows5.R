# Clean up spelling

shows <- read.csv("shows.csv")

shows$show <- shows$show |>
  str_trim() |>
  str_squish() |>
  str_to_title()

shows$show[str_detect(shows$show, "Avatar")] <- "Avatar: The Last Airbender"

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
