# Load the required library
library(tidyverse)
library(magrittr)  # to use pipe operator


# Load the csv file into tibble
air <- read_csv('air.csv')


# Rename the columns.
air <- air |>
  select(colnames(air)[c(1,2,3,4,9,10,11,12)]) |>
  rename(
  state = colnames(air)[1],
  county = colnames(air[2]),
  pollutant = colnames(air)[3],
  emissions = colnames(air)[4],
  level_1 = colnames(air)[9],
  level_2 = colnames(air)[10],
  level_3 = colnames(air)[11],
  level_4 = colnames(air)[12]
  )


# Save the modified data frame.
save(air, file = 'air.RData')



