# Load the tibble
load('air.RData')

# (when reading it as csv, no issue with tibble) 1,200 is converted to NA so we need to remove ',' from the emissions columns
#air$emissions <- sapply((air$emissions), function(x) as.numeric(gsub(",", "", x)))


# Convert emissions column value to numeric type
air$emissions <- as.double(air$emissions)

# To find the total emissions for each pollutant.
air <- air |>
  group_by(pollutant) |>
  summarize(emissions = sum(emissions)) |>
  ungroup() |>
  arrange(desc(emissions))


# To round off the values
# air$emissions <- round(air$emissions, 0)


# save the tibble
save(air, file = '6.RData')

