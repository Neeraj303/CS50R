# Demonstrates identifying NA values with `is.na`

chicks <- read.csv("chicks.csv")

is.na(chicks$weight)
!is.na(chicks$weight)

chicks$chick[is.na(chicks$weight)]
