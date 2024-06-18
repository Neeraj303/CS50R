# Defining Function
get_votes <- function(prompt='Enter Votes: ') { # the variable defined in the function have local scope
  repeat { # check 2nd lec to understand this
    votes <- suppressWarnings(as.integer(readline(prompt))) # to not show the error when we give a string
    if (!is.na(votes)) {
      return(votes)
    }
  }
  
  # if (is.na(votes)){
  #   return(0)
  # } else {
  #   return(votes)
  # }
  #ifelse(is.na(votes), 0, votes) # same as above if else statement
  

  #return(votes) in  R the last computed value would be returned
}

# n_votes <- get_votes("Neeraj Votes: ") # these have global scope, which can be used in global environment
# a_votes <- get_votes("Akash Votes: ")
# u_votes <- get_votes("Umang Votes: ")

total_votes <- 0

for (i in c('Neeraj', 'Akash', 'Umang')) {
  votes <- get_votes(paste0(i, ': '))
  total_votes <- total_votes + votes
}
 
cat('Total votes: ', total_votes)


total_votes <- sum(n_votes, a_votes, u_votes)


sum_votes <- function(a, b, c){
  total_votes <- a + b + c
}

total_votes <- sum_votes(n_votes, a_votes, u_votes)

print(paste('Total Votes:', total_votes))