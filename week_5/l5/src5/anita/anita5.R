# Add labels and adjust theme

load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line(
    linetype = 1,
    linewidth = 0.5
  ) +
  geom_point(
    color = "deepskyblue4",
    size = 2
  ) +
  labs(
    y = "Wind Speed (Knots)",
    x = "Date",
    title = "Hurricane Anita"
  ) +
  theme_classic()
