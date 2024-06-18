# Demonstrates prompting for input, tallying votes in a loop

get_votes <- function(prompt = "Enter votes: ") {
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if (!is.na(votes)) {
      return(votes)
    }
  }
}

total <- 0
for (name in c("Mario", "Peach", "Bowser")) {
  votes <- get_votes(paste0(name, ": "))
  total <- total + votes
}

cat("Total votes:", total)
