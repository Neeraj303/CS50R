load("temps.RData")
temps

# to get multiple values, gives input as vector of indexing
temps[c(2, 4, 7)]

# to select complementary to it
temps[-c(2,4,7)]

#Logicals
temps > temps[2]
temps[temps < 0 | temps > 60]
which(temps < 0 | temps > 60)

# to know the index values where the logical is TRUE
which(temps< 0)

# any, all
any(temps < 0 | temps > 60)
all(temps < 0 | temps > 60)

# both gives the same output
temps[(temps <0 | temps > 60)]
temps[which(temps <0 | temps > 60)]

filter <- (temps < 0 | temps > 60)
temps[filter]


# these next give the same result to exclude the outliers
filter <- !(temps < 0 | temps > 60)
temps[filter]

temps[-which(temps <0 | temps > 60)]


no_outliers <- temps[(temps > 0 & temps < 60)]
no_outliers
save(no_outliers, file='no_outliers.RData')

outliers <- temps[!(temps > 0 & temps < 60)]
outliers
save(outliers, file='outliers.RData')
