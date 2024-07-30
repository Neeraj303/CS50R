url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

View(voters)

nrow(voters) # total number of rows in the dataframe
ncol(voters) # total number of columns in the dataframe

# to get only unique value in the column
unique(voters[, "voter_category"]) # or unique(voters$voter_category)

# Special Values
# Inf, -Inf
# NaN - Not a number
# NA - Not available
# NULL - similar to NA but NA could form a vector 

unique(voters$Q22)

# Factors 
factor(voters$Q21) # we observe unique category of data, for categorical data
factor(voters$Q21, label = c("?", "YES", "NO", "Unsure")) #give specific label to each label

# Exclude
factor(
  voters$Q21, 
  label = c("YES", "NO", "Unsure"), 
  exclude = c(-1)) #give specific label to each label


