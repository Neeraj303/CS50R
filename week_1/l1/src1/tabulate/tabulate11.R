votes <- read.csv("votes.csv")

votes$total <- votes$poll + votes$mail
