# Add first geometry

votes <- read.csv("votes.csv")

ggplot(votes) +
  geom_col()
