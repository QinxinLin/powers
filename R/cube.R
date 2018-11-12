#' Cube a vector
#'
#' This function just raises a vector to the power of 3
#'
#' @param x The vector be cubed
#' @param na.omit whether or not to remove NA, the default is FALSE
#'
#' @return A vector that is the cube of \code{x}
#'
#' @examples
#' cube(1:10)
#' cube(3:8)
#' @export
#'
cube<-function(x,na.omit=FALSE){
  pow(x,3,na.omit)
}
