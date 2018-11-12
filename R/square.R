#' Square a vector
#'
#' This function just raises a vector to the power of 2
#'
#' @param x The vector be squared
#' @param na.omit whether or not to remove NA, the default is FALSE
#'
#' @return A vector that is the square of \code{x}
#'
#' @examples
#' square(6:10)
#' square(-3)
#' @export
#'
square<-function(x,na.omit=FALSE){
  pow(x,2,na.omit)
}
