context("cube numerics")

test_that("numeric values work",{
  num<-c(9,4.5,3)
  expect_identical(cube(num),num^3)
})

test_that("NA remove successfully",{
  v<-c(2,3,NA)
  expect_identical(cube(v,na.omit = TRUE),c(8,27))
  expect_identical(cube(v),c(8,27,NA))
})

test_that("non-numeric inputs do not work",{
  v<-c(0,4,"a")
  expect_identical(cube(v),"invalid inputs")
})
