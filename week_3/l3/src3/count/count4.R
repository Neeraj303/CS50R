# Demonstrates defining a parameter

get_votes <- function(prompt) {
  votes <- as.integer(readline(prompt))
}

mario <- get_votes("Mario: ")
peach <- get_votes("Peach: ")
bowser <- get_votes("Bowser: ")

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
