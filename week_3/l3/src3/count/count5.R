# Demonstrates defining a parameter with a default value

get_votes <- function(prompt = "Enter votes: ") {
  votes <- as.integer(readline(prompt))
}

mario <- get_votes()
peach <- get_votes()
bowser <- get_votes()

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
