# Demonstrates `mean` calculation with NA values

chicks <- read.csv("chicks.csv")
average_weight <- mean(chicks$weight)
average_weight
