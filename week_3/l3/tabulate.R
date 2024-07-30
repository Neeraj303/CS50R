votes <- read.csv('votes.csv')

View(votes)

colnames(votes)
rownames(votes)

total_votes <- c() # empty vector
for (i in rownames(votes)) {
  total_votes[i] <- sum(votes[i, ])
  #total_votes <- c(total_votes, sum(votes[i, ])) # to append the sum to the vector total_votes
}

print(total_votes)
#votes$total <- total_votes


# to find the sum of poll and mail
total <- c()
for (i in colnames(votes)) {
  total[i] <- sum(votes[, i])
}

print(total)


### In python axis=0 for columns, axis=1 for rows
### In R, MARGIN=1 for rows, MARGIN=2 for columns

total_votes <- apply(votes, MARGIN=1, FUN = sum) #sum function across rows

# for sorting it decreasing order
sort(total_votes, decreasing = TRUE)
