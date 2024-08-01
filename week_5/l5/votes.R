######################### Part 1: Bar/columns Plot #####################################
## ggplot2 (Grammar of graphics) package, part of tidyverse
# Components:
# 1. Data
# 2. Geometries: What kind of visualization do you want (columns, points, lines)
# 3. Aesthetic Mappings: relation between our data to visual features.

votes <- read.csv('votes.csv')

View(votes)

# first argument is the data (1st layer)
# then define geometry (2nd layer)
# then define the aesthetic features, aes()

ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col()

# the output sequence of names on the plot follows alpha. order on x-axis

######### Scales: (how to control aesthetic mapping)
# 1. Continuous: fall in some range, have limits. (scale_x_continuous, scale_y_continuous)
# 2. Discrete: fall in category. (scale_x_discrete, scale_y_discrete)

ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col() +
  scale_y_continuous(limits = c(0, 250)) +   # to add limit
  labs(                               # to add labels
    x = 'Candidates',
    y = 'Votes',
    title = 'Election Results'
  )


##### How to add color
# aes(fill = candidate), every candidate get a unique color
# we also find a fill scale
# viridis scale: color blind friendly colors
ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col(aes(fill = candidate)) +  # to give color to each candidate
  scale_fill_viridis_d('Candidate') +  # color blind friendly, and change scale title
  scale_y_continuous(limits = c(0, 250)) +   # to add limit
  labs(                               # to add labels
    x = 'Candidates',
    y = 'Votes',
    title = 'Election Results'
  )

# We add theme at the end 

ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col(aes(fill = candidate)) +  # to give color to each candidate
  scale_fill_viridis_d('Candidate') +  # color blind friendly, and change scale title
  scale_y_continuous(limits = c(0, 250)) +   # to add limit
  labs(                               # to add labels
    x = 'Candidates',
    y = 'Votes',
    title = 'Election Results'
  ) + 
  theme_classic()   # to add theme at the very end

# do these layers have any order:
# ggplot -> geom -> scale -> labels -> theme


# How to get rid of color fill legend, show.legend = FALSE
ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col(aes(fill = candidate), show.legend = FALSE) +  # to give color to each candidate
  scale_fill_viridis_d('Candidate') +  # color blind friendly, and change scale title
  scale_y_continuous(limits = c(0, 250)) +   # to add limit
  labs(                               # to add labels
    x = 'Candidates',
    y = 'Votes',
    title = 'Election Results'
  ) + 
  theme_classic()   # to add theme at the very end


# How to save the plot
p <- ggplot(votes, aes(x = candidate, y = votes)) +
  geom_col(aes(fill = candidate), show.legend = FALSE) +  # to give color to each candidate
  scale_fill_viridis_d('Candidate') +  # color blind friendly, and change scale title
  scale_y_continuous(limits = c(0, 250)) +   # to add limit
  labs(                               # to add labels
    x = 'Candidates',
    y = 'Votes',
    title = 'Election Results'
  ) + 
  theme_classic()   # to add theme at the very end

ggsave(
  'votes.png',
  plot = p,
  width = 1200,
  height = 900,
  units = 'px'
)



