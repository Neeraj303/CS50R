# Demonstrates constructing sequential vector with :

chicks <- read.csv("chicks.csv")
casein_chicks <- chicks[1:3, ]
mean(casein_chicks$weight)
