# Demonstrates quacking 3 times with repeat

i <- 3
repeat {
  cat("quack!\n")
  i <- i - 1
  if (i == 0) {
    break
  } else {
    next
  }
}
