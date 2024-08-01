# Test-Driven Development: When and how should we write our tests
# Probably write test before the function
source('greet.R')

test_that("'greet' says hello to a user", {
  expect_equal(greet('Neeraj'), 'hello, Neeraj')
  expect_equal(greet('Prince'), 'hello, Prince')
})

# Behavior-Driven Development: First define what our function does, and describe it behavior
# Functions:
# 1. describe
# 2. it

describe('greet()', {
  it('can say hello to a user', {
    name <- 'Neeraj'
    expect_equal(greet(name), 'hello, Neeraj')
  })
  it('can say hello to the world', {
    expect_equal(greet(), 'hello, world')
  })
})


# Test Coverage, how much functions you tested reliably
