votes <- read.csv("votes.csv")

votes$total <- votes$poll + votes$mail

write.csv(votes, "totals.csv")
