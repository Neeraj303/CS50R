# Introduce point shape and fill color

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_jitter(
    color = "darkorchid",
    fill = "orchid",
    shape = 21,
    size = 2
  ) +
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()
