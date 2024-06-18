# Code used to generate `chicks.csv`

# Load libraries
library(tidyverse)

# Take first three rows of each group of feed
chicks <- chickwts %>%
  group_by(feed) %>%
  slice_head(n = 3)

# Create chick column
chicks$chick <- as.integer(rownames(chicks))

# Reorder columns
chicks <- chicks %>%
  select(chick, feed, weight)

# Rename horsebean
levels(chicks$feed)[which(levels(chicks$feed) == "horsebean")] <- "fava"

# Randomly insert NA values
chicks$weight[sample.int(length(chicks$weight) - 6, 5) + 6] <- NA

# Write CSV
write.csv(chicks, "chicks.csv", row.names = FALSE)
