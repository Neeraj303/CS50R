## How to create a dataframe
spacecraft <- data.frame(
  name = c("Voyager 1", "Voyager 2", "Pioneer 10"),
  distance = c(163, 136, 80)
)

spacecraft
View(spacecraft)

# To access column
spacecraft$name # this outputs an character vector
spacecraft[, 1] # result in same output as above

spacecraft$distance # this outputs an integer vector

spacecraft[1] # result in dataframe, this is not an vector, we access subset of dataframe
spacecraft[[1]]


# How to manually set row names
spacecraft1 <- data.frame(
  row.names = c("Voyager 1", "Voyager 2", "Pioneer 1"),
  distance = c(163, 136, 80), 
  type = c("Probe", "Probe", "Probe")
)

spacecraft1

# To access specific row
spacecraft1["Voyager 1", ]
