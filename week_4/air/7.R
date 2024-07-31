# Load the data
load('air.RData')


# Task to performed
air <- air |>
  rename(source = level_1) |>
  group_by(source) |>
  group_by(pollutant, .add = TRUE) |>
  summarise(emissions = sum(emissions)) |>
  ungroup() |>
  arrange(source, pollutant)


# Save the tibble
save(air, file = '7.RData')

