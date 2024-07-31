# Load the tibble
load('air.RData')

# Select 'OR -Lane' county
air <- air |>
  filter(county == 'OR - Lane')

# save the tibble
save(air, file = '3.RData')

#View(air)
