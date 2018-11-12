
<!-- README.md is generated from README.Rmd. Please edit that file -->

# powers

The goal of powers is to perform basic computations on numeric vectors.
This package has four exported functions: `Box_Cox()`, `log()`, `cube()`
and `square()`. There is one internal function `pow()`. These functions
only work for numeric inputs.

  - Box\_Cox( ): This function performs the box cox transform of inputs.

  - log( ): This function performs log transformation of inputs.

  - cube( ): This function takes inputs to the power of 3.

  - square( ): This function takes inputs to the power of 2.

## Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("QinxinLin/powers")
```

## Example

Firstly, I need to load `powers` package.

``` r
library(powers)
```

**(1) Examples of `Box_Cox()` function**

``` r
#inputs without NA
num<-c(-1,4,3,-3,-5)
Box_Cox(num,3,6)
#> [1] 41.333333 21.000000  8.666667  8.666667  0.000000
#inputs with NA
num<-c(-1,4,3,-3,-5,NA)
Box_Cox(num,2,7,na.omit = TRUE)
#> [1] 17.5  7.5  4.0  7.5  1.5
Box_Cox(num,2,7,na.omit = FALSE)
#> [1] 17.5  7.5  4.0  7.5  1.5   NA
```

**(2) Examples of `log()` function**

``` r
#inputs without NA
num<-c(4,3,8,5)
log(num,2)
#> [1] 2.0000 1.5850 3.0000 2.3219
#inputs with NA
num<-c(4,3,8,5,NA)
log(num,2,na.omit = TRUE)
#> [1] 2.0000 1.5850 3.0000 2.3219
log(num,2,na.omit = FALSE)
#> [1] 2.0000 1.5850 3.0000 2.3219     NA
```

**(3) Examples of `square()` function**

``` r
#numeric inputs
num<-c(4,3,8,5)
square(num)
#> [1] 16  9 64 25
#non-numeric inputs
num<-c(4,3,8,5,"a")
square(num)
#> [1] "invalid inputs"
```

**(4) Examples of `cube()` function**

``` r
num<-c(4,3,8,5)
cube(num)
#> [1]  64  27 512 125
#non-numeric inputs
num<-c(4,3,8,5,"a")
cube(num)
#> [1] "invalid inputs"
```

## For Developers

Use the internal pow function as the machinery for the front-end
functions such as Box\_Cox, log, square and cube.
