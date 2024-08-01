##############################  PART - 2  ######################################

#######  Unit-Tests
# Test some unit of our code (function)
source('average1.R')       # to ensure we are able to check this function over here

test_average <- function() {    # we write a new function to check our defined function
  if(average(c(1, 2, 3)) == 2) {
    cat("'average' passed test :)\n")
  } else {
    cat("'average' failed the test :(\n")
  }
}

test_average()

## We cant check this for all the possible scenario, since we need to write it again.
# testthat package help us.

library('testthat') # load the package
# function : 
# 1. test_that()
# 2. expect_equal()
# 3. expect_warning()
# 4. expect_no_warning()
# 5. expect_error()
# 6. expect_no_error()

test_that("'average' calculates mean", {
  expect_equal(average(c(1, 2, 3)), 2)
  expect_equal(average(c(-1, -2, -3)), -2)
  expect_equal(average(c(-1, 0, 1)), 0)
  expect_equal(average(c(0.1, 0.5)), 0.3, tolerance = 1e-8)   # Floating-Point imprecision, we can only few bits to represent this
})

test_that("'average' returns NA with NAs in input", {
  expect_equal(suppressWarnings(average(c(1, 2, NA))), NA)         # we suppress the warning since we are 
  expect_equal(suppressWarnings(average(c(NA, NA, NA))), NA)       #  only interested in the output NA   
})

test_that("'average' warns about NAs in input", {
  expect_warning(average(c(1, 2, NA)))
  expect_warning(average(c(1, 0, NA, 3, 5)))
  expect_warning(average(c(NA, NA, NA)))
})

test_that("'average' stops if 'x' is non-numeric", {     # to check if the function stops
  expect_error(average(c('quack!')))
  expect_error(average(c('1', '0', '3')))
})


# Floating-Point imprecision, we can only few bits to represent this
# Tolerance, is the range of value above or below we consider it correct.


# Test-Driven Development: When and how should we write our tests
# Probably write test before the function