# Demonstrates prompting for input in a loop

get_votes <- function(prompt = "Enter votes: ") {
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if (!is.na(votes)) {
      return(votes)
    }
  }
}

for (name in c("Mario", "Peach", "Bowser")) {
  votes <- get_votes(paste0(name, ": "))
}
