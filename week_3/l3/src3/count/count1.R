# Demonstrates counting votes for 3 different candidates

mario <- as.integer(readline("Mario: "))
peach <- as.integer(readline("Peach: "))
bowser <- as.integer(readline("Bowser: "))

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
