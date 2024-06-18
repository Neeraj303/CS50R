# Demonstrates NA

url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

voters$Q22
unique(voters$Q22)
