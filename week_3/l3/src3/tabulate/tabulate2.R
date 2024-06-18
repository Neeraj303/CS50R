# Demonstrates summing votes for each voting method procedurally

votes <- read.csv("votes.csv")

total_votes <- c()
for (method in colnames(votes)) {
  total_votes[method] <- sum(votes[, method])
}
total_votes
