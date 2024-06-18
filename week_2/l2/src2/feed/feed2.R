# Demonstrates \n

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Prompt user with options
cat("1.", feed_options[1], "\n")
cat("2.", feed_options[2], "\n")
cat("3.", feed_options[3], "\n")
cat("4.", feed_options[4], "\n")
cat("5.", feed_options[5], "\n")
cat("6.", feed_options[6], "\n")
feed_choice <- as.integer(readline("Feed type: "))
