# Demonstrates removing outliers
load("temps.RData")

no_outliers <- temps[!(temps < 0 | temps > 60)]
save(no_outliers, file = "no_outliers.RData")

outliers <- temps[temps < 0 | temps > 60]
save(outliers, file = "outliers.RData")
