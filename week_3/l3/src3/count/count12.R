# Demonstrates tightening return

get_votes <- function(prompt = "Enter votes: ") {
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if (!is.na(votes)) {
      return(votes)
    }
  }
}

mario <- get_votes("Mario: ")
peach <- get_votes("Peach: ")
bowser <- get_votes("Bowser: ")

total <- sum(mario, peach, bowser)
cat("Total votes:", total)
