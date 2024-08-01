# Visualize with geom_point

load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_point()
