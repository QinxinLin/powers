context("perform log transformation on numerics")

test_that("numeric values work.",{
  num<-c(2,5,45)
  expect_equal(log(num,3),c(0.6309,1.4650,3.4650))
  expect_equal(log(exp(4)),4)
  expect_equal(log(0,2),-Inf)
})

test_that("non-numeric inputs do not work",{
  num1<-c(0,-3.5,3,"b")
  num2<-c(0,6.7,2)
  expect_equal(log(num1,3),"invalid input")
  expect_equal(log(num2,"5"),"invalid input")
})

test_that("NA removed sucessfully",{
  v<-c(2,4,NA)
  expect_identical(log(v,2,na.omit = TRUE),c(1,2))
  expect_identical(log(v,2),c(1,2,NA))
})

test_that("x>=0",{
  v<-c(0,-5.6,3)
  expect_equal(log(v,2),"x needs to be greater than or equal to 0")
})
