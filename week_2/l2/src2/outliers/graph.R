# Code used to generate outliers data and graph

# Load libraries
library(ggdark)
library(ggplot2)
library(viridis)

# Generate temperature data with outliers
if (file.exists("temps.RData")) {
  load("temps.RData")
} else {
  temps <- round(runif(31, min = 5, max = 45))
  temps[1] <- 15
  temps[2] <- -15
  temps[3] <- 20
  temps[4] <- -20
  temps[6] <- 43
  temps[7] <- 65
}

# Save temperature data
save(temps, file = "temps.RData")

# Create january data frame
january <- data.frame(
  day = 1:31,
  temp = temps
)

# Generate plot
p <- ggplot(january, aes(x = day, y = temp, fill = temp)) +
  geom_col(color = "white", linewidth = 0.25) +
  dark_theme_light() +
  scale_fill_viridis() +
  labs(
    title = "Average Daily Temperature in January",
    y = "Temperature (°F)",
    x = "Day of Month"
  ) +
  guides(fill = guide_colourbar(title = "Temperature (°F)"))

# Check for outliers
ggplot(january, aes(y = temps)) +
  geom_boxplot()

# Save plot
ggsave(
  "average_daily_temps.jpg",
  plot = p,
  width = 3840,
  height = 2160,
  dpi = "retina",
  scale = 0.7,
  units = "px"
)
