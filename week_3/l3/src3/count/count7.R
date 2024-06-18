# Demonstrates exact argument matching

get_votes <- function(prompt = "Enter votes: ") {
  votes <- as.integer(readline(prompt))
}

mario <- get_votes(prompt = "Mario: ")
peach <- get_votes(prompt = "Peach: ")
bowser <- get_votes(prompt = "Bowser: ")

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
