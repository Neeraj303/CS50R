#Load the tibble
load('zelda.RData')


# Perform the task
zelda <- zelda |>
  group_by(year) |>
  summarise(releases = n()) |>
  ungroup() |>
  arrange(desc(releases))


# Save the tibble
save(zelda, file = '2.RData')
