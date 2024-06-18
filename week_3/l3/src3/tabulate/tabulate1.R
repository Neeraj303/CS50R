# Demonstrates summing votes for each candidate procedurally

votes <- read.csv("votes.csv")

total_votes <- c()
for (candidate in rownames(votes)) {
  total_votes[candidate] <- sum(votes[candidate, ])
}
total_votes
