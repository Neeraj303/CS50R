# Adjust ggplot theme

votes <- read.csv("votes.csv")

ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col(aes(fill = candidate)) +
  scale_fill_viridis_d("Candidate") +
  scale_y_continuous(limits = c(0, 250)) +
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  ) +
  theme_classic()
