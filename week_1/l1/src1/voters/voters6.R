# Demonstrates excluding values from the levels of a factor

url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

voters$Q21 <- factor(
  voters$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
)
