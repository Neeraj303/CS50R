########################   Part 3: Line Plot    ################################

# load the time-series data
load('anita.RData')
View(anita)


ggplot(
  anita,
  aes(x = timestamp, y = wind)
  ) + 
  geom_point()


# How to connect this points
ggplot(
  anita,
  aes(x = timestamp, y = wind)
  ) + 
  geom_point(color = 'deepskyblue') +
  geom_line()  +             # new layer to join all points
  labs(
    x = 'Date',
    y = 'Wind Speed (Knots)',
    title = 'Hurricane Anita'
  )

# In the above plot the line is over the points, how to correct this,
# just change the order
ggplot(
  anita,
  aes(x = timestamp, y = wind)
  ) + 
  geom_line() +    # new layer to join all points
  geom_point(color = 'deepskyblue') +
  labs(
    x = 'Date',
    y = 'Wind Speed (Knots)',
    title = 'Hurricane Anita'
  )


############ aesthetic of the line
# 1. linetype  : change the type of line (solid, 2-dashed)
# 2. linewidth : change the width
ggplot(
  anita,
  aes(x = timestamp, y = wind)
  ) + 
  geom_line(
    linetype = 1,
    linewidth = 0.5
  ) +    # new layer to join all points
  geom_point(
    color = 'deepskyblue',
    size = 2) +
  labs(
    x = 'Date',
    y = 'Wind Speed (Knots)',
    title = 'Hurricane Anita'
  ) +
  theme_classic()


# How to add horizontal line.
ggplot(
  anita,
  aes(x = timestamp, y = wind)
  ) + 
  geom_line(
    linetype = 1,
    linewidth = 0.5
  ) +    # new layer to join all points
  geom_point(
    color = 'deepskyblue',
    size = 2
  ) +
  geom_hline(
    yintercept = 65,
    linewidth = 0.5,
    linetype = 2
  ) +
  labs(
    x = 'Date',
    y = 'Wind Speed (Knots)',
    title = 'Hurricane Anita'
  ) +
  theme_classic()

