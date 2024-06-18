# Demonstrates finding number of rows and columns in a large data set

url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

nrow(voters)
ncol(voters)
