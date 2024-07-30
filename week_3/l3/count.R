###################### Defining function #######################################

get_votes <- function() {
  votes <- as.integer(readline("Enter votes: "))
  return(votes)
}

neeraj <- get_votes()
umang <- get_votes()
anmay <- get_votes()

total <- sum(neeraj, umang, anmay)
print(paste('Total Votes', total))

################# Adding prompt in function ####################################

get_votes <- function(prompt='Enter Votes: ') {
  votes <- as.integer(readline(prompt))
  # removed return since function default return last computed value.
  #return(votes)
}

neeraj <- get_votes()
umang <- get_votes()
anmay <- get_votes()

total <- sum(neeraj, umang, anmay)
print(paste('Total Votes:', total))

# neeraj, umang, anmay, total are variables defined in global environment.

# votes is defined inside the function, so we cant access outside function since
# its scope is defined inside the function only

# coercion is a process to convert some storage mode to other.



##########################  suppressWarnings ###################################
# What if we enter character this leads to error when converting to integer

get_votes <- function(prompt='Enter Votes: ') {
  votes <- suppressWarnings(as.integer(readline(prompt))) # to avoid the eco of warning
  if (is.na(votes)) {
    return(0)
  } else {
    return(votes)
  }
}

neeraj <- get_votes(prompt = 'Neeraj Votes: ')
umang <- get_votes(prompt = 'Umang Votes: ')
anmay <- get_votes(prompt = 'Anmay Votes: ')

total <- sum(neeraj, umang, anmay)
print(paste('Total Votes:', total))


######################## ifelse usage in the function ##########################

get_votes <- function(prompt='Enter Votes: ') {
  votes <- suppressWarnings(as.integer(readline(prompt))) # to avoid the eco of warning
  ifelse(is.na(votes), 0, votes)
}

neeraj <- get_votes(prompt = 'Neeraj Votes: ')
umang <- get_votes(prompt = 'Umang Votes: ')
anmay <- get_votes(prompt = 'Anmay Votes: ')

total <- sum(neeraj, umang, anmay)
print(paste('Total Votes:', total))


############################# repeat, for in function ##########################

get_votes <- function(prompt='Enter Votes: ') {
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt))) # to avoid the eco of warning
    if (!is.na(votes)) {
      return(votes) # this would break us out of the function
    }
  }
}

total_votes <- 0

for (i in c('Neeraj', 'Umang', 'Anmay')) {
  votes <- get_votes(prompt = paste0(i, ': '))
  total_votes <- total_votes + votes
}


#print(paste('Total Votes:', total_votes))
a <- cat('Total Votes:', total_votes)