# Demonstrates removing NA values and resetting row names

chicks <- read.csv("chicks.csv")

chicks <- subset(chicks, !is.na(weight))
rownames(chicks)

rownames(chicks) <- NULL
rownames(chicks)
