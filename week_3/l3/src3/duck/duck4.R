# Demonstrates removing extraneous next keyword

i <- 3
repeat {
  cat("quack!\n")
  i <- i - 1
  if (i == 0) {
    break
  }
}
