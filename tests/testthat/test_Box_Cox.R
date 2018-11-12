context("perform box cox transformation on numerics")

test_that("numeric values work.",{
  num<-c(0,2,3)
  expect_identical(Box_Cox(1,1,2),0)
  expect_equal(Box_Cox(num,2,4),c(-0.5,1.5,4.0))
})

test_that("non-numeric inputs do not work",{
  num1<-c(0,-3.5,3,"b")
  num2<-c(0,6.7,2)
  expect_equal(Box_Cox(num1,2,4),"invalid input")
  expect_equal(Box_Cox(num2,"5",6),"invalid input")
})

test_that("lambda1 should be between -5 to 5",{
  num<-c(0,5,6)
  expect_equal(Box_Cox(num,7,3),"invalid lambda1")
})

test_that("NA removed sucessfully",{
  v<-c(2,4,NA)
  expect_identical(Box_Cox(v,2,3,na.omit = TRUE),c(1.5,7.5))
  expect_identical(Box_Cox(v,2,3),c(1.5,7.5,NA))
})



