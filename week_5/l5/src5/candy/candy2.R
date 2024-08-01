# Add labels and theme

load("candy.RData")

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_point() +
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()
