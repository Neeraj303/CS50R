# Demonstrates removing outliers by index

load("temps.RData")
no_outliers <- temps[-c(2, 4, 7)]

mean(no_outliers)
mean(temps)
