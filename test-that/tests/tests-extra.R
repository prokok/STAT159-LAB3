source("../functions/extra.R")

# context with one test that groups expectations
context("Test for center_measures") 
test_that("center_measures works as expected for x", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_length(center_measures(x), 2)
  expect_type(center_measures(x), 'double')
})


context("Test for spread_measures") 
test_that("spread_measures works as expected for y", {
  y <- c(1, 2, 3, 4, 5)
  
  expect_length(spread_measures(y),3)
  expect_equal(spread_measures(y), NA_real_)
})


context("Test for descriptive statistics")
test_that("descriptive statistics works as expected for z", {
  z <- c(1, 2, 3, 4, 5, NA, NA)

  expect_length(descriptive_stats(z), 6)
  expect_type(descriptive_stats(z), 'integer')
})