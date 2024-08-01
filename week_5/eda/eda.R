# Load library
library('tidyverse')

########### We will use storms data
load('storms.RData')

####### We create data frame where we select hurricane with max speed in each year
hurricanes <- storms |>
  select(c('name', 'year', 'wind', 'status')) |>
  filter(status == 'hurricane') |>
  group_by(year) |>
  slice_head() |>
  arrange(year) |>
  filter(year >= 2010 & year <= 2022)


# Convert name to factor, to ensure same order in x axis while plotting
#hurricanes$name <- factor(hurricanes$name, levels = hurricanes$name)

###### Plotting
wind_plot <- ggplot(hurricanes, aes(x = year, y = wind)) +
  geom_col(aes(fill = year), show.legend = FALSE) +
  labs(
    x = 'Year',
    y = 'Wind Speed',
    title = 'Hurriance wind speed every year'
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 0.9, vjust = 0.5))   # to rotate the x ticks by 90 degrees


ggsave(
  'visualization.png',
  plot = wind_plot,
  width = 1200,
  height =900,
  units ='px'
)
