# load the source code of the functions to be tested
source("../functions/missing-values.R")
source("../functions/range-value.R")


# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})


test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_length(range_value(y), 1)
  expect_equal(range_value(y), NA_real_)
})


test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z), 1)
  expect_equal(range_value(z), 1L)
  expect_type(range_value(z), 'integer')
  
})

test_that("range value stops for character vectors", {
  w <- letters[1:5]
    expect_error(range_value(w))
})



context("Test for missing value") 


test_that("missing value", {
  x = c(1, 2, 3, 4, 5)
  y = c(TRUE, FALSE, TRUE)
  
  expect_length(missing_values(x), 1)
  expect_type(missing_values(z), 'double')
  expect_gte(missing_values(x), 0)
 
})
