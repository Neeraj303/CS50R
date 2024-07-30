### Matrix
temps <- c(60, 55, 50, 60, 60, 55, 65, 60, 60)

weather <- matrix(
  temps,
  nrow = 3,
  ncol = 3
)

weather
weather[1, ] # to access 1st row
weather[, 1] # 1st column

?matrix

### Array
load('temps.RData')
temps

weather <- array(
  temps,
  dim = c(3, 3, 3)
)

weather[, , 1] # 1st matrix
weather[, , 2] # 2nd matrix

?array
