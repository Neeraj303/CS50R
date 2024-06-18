# Demonstrates computing casein average with explicit indexes

chicks <- read.csv("chicks.csv")
casein_chicks <- chicks[c(1, 2, 3), ]
mean(casein_chicks$weight)
