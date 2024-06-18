 #votes <- read.table('votes.csv', sep=",", header=TRUE)

# to directly read csv file into a dataframe
votes <- read.csv('votes.csv')

# how to access value in the dataframe, dataframe[row, column]
# R does not start from 0 index, as opposed to python
 View(votes)
 print(paste("Total Poll:", sum(votes[,2])))
 
 # similar way to the above task
 print(paste("Total Poll: ", sum(votes$poll)))
 
 # Vectors is returned
 name = votes$candidate
 
 # Vector addition to find the total for each candidates
 total_votes <- votes$poll + votes$mail
 votes$total <- total_votes
 
 # To save the file
 write.csv(votes, 'total.csv', row.names=FALSE)
 
 # How to know th names of row and columns
 colnames(votes) # to knwo all the column names
 rownames(votes) # to access the row names 

 
       