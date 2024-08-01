# Introduce geom_point

load("candy.RData")

ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
) +
  geom_point()
