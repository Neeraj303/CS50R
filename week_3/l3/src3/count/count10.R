# Demonstrates suppressWarnings

get_votes <- function(prompt = "Enter votes: ") {
  votes <- suppressWarnings(as.integer(readline(prompt)))
  ifelse(is.na(votes), 0, votes)
}

mario <- get_votes("Mario: ")
peach <- get_votes("Peach: ")
bowser <- get_votes("Bowser: ")

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
