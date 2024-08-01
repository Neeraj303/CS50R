# Introduce geom_line

load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line()
