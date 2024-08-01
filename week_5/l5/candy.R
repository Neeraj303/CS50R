############################  Part 2: Point plot  ##############################
# Relation between columns that are continuous.

# Load the data
load('candy.RData')
View(candy)


ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
  ) +
  geom_point()

# same coordinates on the plot can be seen with 'jittering'
ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
  ) +
  geom_jitter() +
  labs(
    x = 'Price',
    y = 'Sugar',
    title = 'Price and Sugar'
  ) +
  theme_classic()


# How to add color
# aesthetic mapping tells ggplot to map column in our data to x and y
ggplot(
  candy,
  aes(x = price_percentile, y = sugar_percentile)
  ) +
  geom_jitter(
    color = 'darkorchid',    # to add color to all points
    fill = 'orchid',          # only with 21 shape
    shape = 21,              # to change the shape, 21 have color (outside) and fill (inside). ('circle', 'triangle', 'square')
    size = 2                 # to change the size of the points
  ) +
  labs(
    x = 'Price',
    y = 'Sugar',
    title = 'Price and Sugar'
  ) +
  theme_classic()
 

# to randomize the color for each dot, we will use in aesthetic 