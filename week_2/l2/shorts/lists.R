# Comparing list to vector
# Vector only stores of same data-type.
# Lists can store value of different data-type.


# vector of names(str)
names <- c('Alice', 'Bob', 'Charlie')

# vector of ages(int)
ages <- c(19, 45, 31)

# create a list
people <- list(names, ages)

# access the value
people[1] # indexing, gives a sub-list
people[[1]] # extracting element from the list

people[[1]][1] # to extract first element
people[[2]][2]

names(people) <- c('names', 'ages')
people

people$names # or people[[1]]
people$ages

people$names[1]

df <- data.frame(people)
df
