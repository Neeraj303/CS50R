# Introduce size and color aesthetic

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_jitter(
    color = "darkorchid",
    size = 2
  ) +
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()