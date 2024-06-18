# Demonstrates `any` and `all` to test for outliers

load("temps.RData")

any(temps < 0 | temps > 60)
all(temps < 0 | temps > 60)
