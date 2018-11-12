#' Box Cox transformation
#' This function perform box cox transformation
#'
#' @param y The vector to be transformed
#'
#' @param lambda1 The first parameter of the transformation in the range from -5 to 5
#'
#' @param lambda2 The second parameter of the transformation, lambda2 is used for
#' negative values of y. lambda2 must be greater than -y.
#'
#' @param na.omit whether or not to remove NAs, the default is FALSE
#'
#' @return A vector that is the box cox transformation of \code{y}
#'
#' @details
#' This function calculates the box cox transformation of a vector
#' The \code{Box_Cox} is used to transform non-normal dependent variables into a normal distribution
#' @examples
#' Box_Cox(1:10,2,4)
#' Box_Cox(-3:-1,3,2)
#' @export
#'
Box_Cox <- function(y,lambda1,lambda2, na.omit=FALSE){
  if(is.numeric((y)) && is.numeric(lambda1) && is.numeric(lambda2)){
    if(lambda1>=-5 && lambda1<=5){
      result <- rep(NA,length(y))
      for(i in 1:length(y)){
        if(is.na(y[i])){
          result[i] <- NA
        }else{
          if(y[i]>=0){ # y[i] >= 0
            if(lambda1 != 0){
              result[i] <- (pow(y[i],lambda1,na.omit)-1)/lambda1
            }else{
              result[i] <- log(y[i])
            }
          }else{  #y[i] <0
            if(y[i]>-lambda2){
              if(lambda1 != 0){
                result[i] <- (pow((y[i]+lambda2),lambda1,na.omit)-1)/lambda1
              }else{
                result[i] <- log(y[i]+lambda2)
              }
            }else{
              return("invalid lambda2")
            }
          }
        }
      }
      if(na.omit==TRUE){
        result<-result[!is.na(result)] #remove NA
        return(result)
      }else{
        return(result)
      }
    }else{
      #lambda values are not range from -5 to 5
      return("invalid lambda1")
    }
  }else{
    #inputs are not numeric
    return("invalid input")
  }
}
