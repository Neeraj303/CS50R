# Demonstrates na.rm to remove NA values from mean calculation

chicks <- read.csv("chicks.csv")
average_weight <- mean(chicks$weight, na.rm = TRUE)
average_weight
