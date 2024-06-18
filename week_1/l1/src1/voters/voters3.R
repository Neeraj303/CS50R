# Demonstrates finding unique values in a vector

url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

unique(voters$voter_category)
