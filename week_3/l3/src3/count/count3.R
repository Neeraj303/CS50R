# Demonstrates R returning the last evaluated expression

get_votes <- function() {
  votes <- as.integer(readline("Enter votes: "))
}

mario <- get_votes()
peach <- get_votes()
bowser <- get_votes()

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
