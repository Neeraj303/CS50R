# Implements same functionality with `menu`

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Prompt user for input
feed_options <- unique(chicks$feed)
feed_choice <- menu(
  feed_options,
  title = "Feed type:"
)

# Show subset
selected_feed = feed_options[feed_choice]
print(subset(chicks, feed == selected_feed))
