#' Generic power function
#'
#' This function raises a vector to any power. I'm making it internal,
#' by not \code{export}ing, because I don't want users to use it.
#'
#' @param x Vector to raise to some power
#' @param a Power to raise \code{x} by
#' @param na.omit whether or to remove NA, the default is FALSE
#' @return A vector that is the power of \code{x}
#'
#' @details
#' This function isn't complicated.
#' This function requires the input to be numeric, if it is not,
#' an "invalid input" message will appear.
#'
pow<-function(x,a,na.omit=FALSE){
  if(na.omit==TRUE){
    x<-x[!is.na(x)] #remove NA
    if(is.numeric(x) && is.numeric(a)){
      return(x^a)
    }else{
      #inputs are not numerics
      return("invalid inputs")
    }
  }else{
    if(is.numeric(x) && is.numeric(a)){
      return(x^a)
    }else{
      #inputs are not numerics
      return("invalid inputs")
    }
  }
}
