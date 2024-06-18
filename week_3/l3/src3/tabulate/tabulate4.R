# Demonstrates summing votes for each voting method with apply

votes <- read.csv("votes.csv")
total_votes <- apply(votes, MARGIN = 2, FUN = sum)
total_votes
