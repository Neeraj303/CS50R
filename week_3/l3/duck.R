# Loops 
# 1. Repeat

i <- 3
repeat  { # this create an infinite loop
  print('quack!\n')
  i <- i - 1
  if(i == 0) {
    break # to exit from the loop
  } else {
    next # to come to the next iteration in the loop
  }
}

# 2. While

i <- 1
while (i <= 3) {
  print('quack!\n')
  i <- i - 1
}

# 3. For

for (i in 1:3) { # i iterates over the vector
  cat('quack\n')
}