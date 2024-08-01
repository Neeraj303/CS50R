# Combine geom_line and geom_point

load("anita.RData")

ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_line() +
  geom_point(color = "deepskyblue4")
