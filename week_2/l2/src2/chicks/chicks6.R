# Demonstrates logical expression to identify rows with casein feed

chicks <- read.csv("chicks.csv")

chicks$feed == "casein"
