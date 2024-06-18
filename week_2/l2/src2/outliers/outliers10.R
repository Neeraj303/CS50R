# Demonstrates negating a logical expression with !

load("temps.RData")
filter <- !(temps < 0 | temps > 60)
temps[filter]
