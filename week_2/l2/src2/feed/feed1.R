# Demonstrates interactive program to view data by feed type

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Prompt user with options
cat("1.", feed_options[1])
cat("2.", feed_options[2])
cat("3.", feed_options[3])
cat("4.", feed_options[4])
cat("5.", feed_options[5])
cat("6.", feed_options[6])
feed_choice <- as.integer(readline("Feed type: "))
