n_vote <- as.integer(readline("Enter vote for Neeraj: ")) # Coercion
a_vote <- as.integer(readline("Enter vote for akash: "))
u_vote <- as.integer(readline("Enter vote for umang: "))

#total_vote <- n_vote + a_vote + u_vote
total_vote <- sum(n_vote, a_vote, u_vote)

print(paste('Total Vote:', total_vote))

# storage modes
#1. Character, as.character()    
#2. Double,    as.double ()
#3. Integer,   as.integer()