# Demonstrates subsetting a vector with a logical vector

load("temps.RData")
filter <- temps < 0 | temps > 60
temps[filter]
