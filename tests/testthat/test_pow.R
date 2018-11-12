context("pow numerics")

test_that("numeric values work",{
  num<-c(9,4.5,3)
  expect_identical(pow(num,3),num^3)
})

test_that("NA remove successfully",{
  v<-c(2,3,NA)
  expect_identical(pow(v,4,na.omit = TRUE),c(16,81))
  expect_identical(pow(v,4),c(16,81,NA))
})

test_that("non-numeric inputs do not work",{
  v<-c(0,4,"a")
  expect_identical(pow(v),"invalid inputs")
})
