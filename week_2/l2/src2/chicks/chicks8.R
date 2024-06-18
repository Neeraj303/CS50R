# Demonstrates subsetting with `subset`

chicks <- read.csv("chicks.csv")

casein_chicks <- subset(chicks, feed == "casein")
mean(casein_chicks$weight, na.rm = TRUE)
