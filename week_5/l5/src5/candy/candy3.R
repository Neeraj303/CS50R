# Introduce geom_jitter

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_jitter() +
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()
