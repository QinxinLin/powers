context("square numerics")

test_that("numeric values work",{
  num<-c(9,4.5,3)
  expect_identical(square(num),num^2)
})

test_that("NA remove successfully",{
  v<-c(2,3,NA)
  expect_identical(square(v,na.omit = TRUE),c(4,9))
  expect_identical(square(v),c(4,9,NA))
})

test_that("non-numeric inputs do not work",{
  v<-c(0,4,"a")
  expect_identical(square(v),"invalid inputs")
})
