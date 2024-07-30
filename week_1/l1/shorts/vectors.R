# c stands for combine
a = c('Hello', 'Neeraj')
a

# How to repeat a vector
rep(a, time = 2) # to repeat the whole vector.
rep(a, each = 2) # to repeat each value of the vector.


numbers <- c(1,2,3,4,5,6,7,8,9,10)
numbers

#numbers1 <- c(1:10)
numbers1 <- 1:10
numbers1

# To increment by specific value
numbers2 <- seq(from=1, to=10, by=2)
numbers2

# Get vector of specific length with equal spacing
numbers3 <- seq(from = 1, to = 10, length.out = 4)
numbers3
