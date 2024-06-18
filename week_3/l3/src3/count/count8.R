# Demonstrates anticipating invalid input

get_votes <- function(prompt = "Enter votes: ") {
  votes <- as.integer(readline(prompt))
  if (is.na(votes)) {
    return(0)
  } else {
    return(votes)
  }
}

mario <- get_votes("Mario: ")
peach <- get_votes("Peach: ")
bowser <- get_votes("Bowser: ")

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
