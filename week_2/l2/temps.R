# RData file can store R data structure
load("temps.RData")
temps

# to get multiple values, gives input as vector of indexing
temps[c(2, 4, 7)]

# to select complementary to it
temps[-c(2,4,7)]

#Logicals
temps > temps[2]
temps[!(temps < 0)] # Prints value which are not less than 0


# Logical Operators
#1. & (ampersand) = AND, for vectors of logicals 
#2. | (pipe) = OR, for vectors of logicals
#3. && = for single value 
#4. || = for single value

temps[temps < 0 | temps > 60]
which(temps < 0 | temps > 60) # this gives the index at which the condition is followed

# to know the index values where the logical is TRUE
which(temps< 0)

# any, all
any(temps < 0 | temps > 60) # to check any value outlier return TRUE/FALSE
all(temps < 0 | temps > 60) # to check all value outlier, return TRUE/FALSE

# both gives the same output
temps[(temps <0 | temps > 60)]
temps[which(temps <0 | temps > 60)]

# to exclude outlier
temps[!(temps < 0 | temps > 60)]
temps[-which(temps < 0 | temps > 60)]

filter <- (temps < 0 | temps > 60) # this gives a vector of TRUE and FALSE
temps[filter]


# these next give the same result to exclude the outliers
filter <- !(temps < 0 | temps > 60)
temps[filter]

temps[-which(temps <0 | temps > 60)]


no_outliers <- temps[!(temps < 0 | temps > 60)]
no_outliers
# to create and save the data structure
save(no_outliers, file='no_outliers.RData')

outliers <- temps[(temps < 0 | temps > 60)]
outliers
save(outliers, file='outliers.RData')
