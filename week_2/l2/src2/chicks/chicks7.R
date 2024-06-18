# Demonstrates subsetting data frame with logical vector

chicks <- read.csv("chicks.csv")

filter <- chicks$feed == "casein"
casein_chicks <- chicks[filter, ]
mean(casein_chicks$weight)
