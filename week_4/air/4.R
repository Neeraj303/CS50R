# Load the tibble
load('air.RData')

# Select 'OR - Lane' county and sort by emissions in decreasing order
air <- air |>
  filter(county == 'OR - Lane') |>
  arrange(desc(emissions))

# Save the tibble
save(air, file = '4.RData')

