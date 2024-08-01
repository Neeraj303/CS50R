# Add labels

votes <- read.csv("votes.csv")

ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col() +
  scale_y_continuous(limits = c(0, 250)) +
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  )
