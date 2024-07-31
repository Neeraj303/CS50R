# Load the tibble
load('air.RData')

# Select single row of highest emission for each county
air <- air |>
  group_by(county) |>
  arrange(desc(emissions)) |>
  slice_head()

# Save the tibble
save(air, file = '5.RData')
