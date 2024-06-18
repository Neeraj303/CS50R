# Demonstrates defining a function

get_votes <- function() {
  votes <- as.integer(readline("Enter votes: "))
  return(votes)
}

mario <- get_votes()
peach <- get_votes()
bowser <- get_votes()

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
