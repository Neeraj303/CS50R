chicks <- read.csv('chicks.csv')
View(chicks)

nrow(chicks)
ncol(chicks)

colnames(chicks)

mean_weight <- mean(chicks$weight, na.rm = TRUE) # to remove the NA value
print(paste('The avergae weight:', mean_weight, 'grams'))

# to get multiple rows
casein_chicks <- chicks[c(1,2,3), ]
mean(casein_chicks$weight)

#selecting rows through index
casein_chicks <-chicks[1:3,]
casein_chicks


# selecting rows sing logic
unique(chicks$feed)

filter <- chicks$feed == 'casein'
casein_chicks <- chicks[filter,]
mean(casein_chicks$weight)

# to remove NA values
#logical functions: is.infinite, is.na, is.nan, is.null
filter <- !is.na(chicks$weight)
chicks <- chicks[filter, ]

# subset to access the same task above
chicks <- subset(chicks, !is.na(weight))
View(chicks)


soybean_chicks <- subset(chicks, feed == 'soybean')
soybean_chicks

rownames(chicks)
rownames(chicks) <- NULL # to rename row index
rownames(chicks)


# Number of NA in the dataset
sum(is.na(chicks$weight))


###########################  feed.R  ##########################################
chicks <- read.csv('chicks.csv')
chicks <- subset(chicks, !is.na(weight))

# Unique value of feed
feed_options <- unique(chicks$feed)

# Format Options
formated_options <- paste0(1:length(feed_options), ". ", feed_options)

# select options
cat(formated_options, sep ="\n")
feed_choice <- as.integer(readline("Feed type:")) 

# conditionals
if (feed_choice > 6 || feed_choice < 1) {
  print("Invalid Choice.")
} else {
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks, feed == selected_feed))
}

###############################  sales.R  ######################################
Q1 <- read.csv('Q1.csv')
Q1$quarter <- "Q1"
View(Q1)

Q2 <- read.csv('Q2.csv')
Q2$quarter <- "Q2"

Q3 <- read.csv('Q3.csv')
Q3$quarter <- "Q3"

Q4 <- read.csv('Q4.csv')
Q4$quarter <- "Q4"

total_sales <- rbind(Q1, Q2, Q3, Q4)
View(total_sales)

# conditional that works with vector
total_sales$value <- ifelse(total_sales$sale_amount > 100, "High Value", "Regular")
View(total_sales)


