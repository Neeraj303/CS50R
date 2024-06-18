# Demonstrates identifying outliers with compound logical expressions

load("temps.RData")
temps < 0 | temps > 60
