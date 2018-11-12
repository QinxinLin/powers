#' log transformation
#'
#' This function performs log transformation
#'
#' @param x The vector to be transformed if x>=0
#'
#' @param base The base of the log transformation, the default is exp(1)
#'
#' @param na.omit whether or not to remove NA, the default is FALSE
#'
#' @return A vector that is the log transformation of \code{x}
#'
#' @details
#' The function calculates the log transformation of a vector
#' This function can only calculate the log transformation of x in the range:
#' base^(-100) <= x <= base^100
#'
#' @examples
#' log(1:10,2)
#' log(200,3)
#'
#' @export
#'
log <- function(x,base=exp(1),na.omit=FALSE){
  if(is.numeric(x) && is.numeric(base)){
    result<-rep(NA,length(x))
    for(i in 1:length(x)){
      if(is.na(x[i])){
        result[i] <- NA
      }else{
        if(x[i]==0){
          result[i] <- -Inf
        }else{
          if(x[i]>=0){
            if(x[i]>=pow(base,-100,na.omit)&&x[i] <= pow(base,100,na.omit)){
              s<-seq(from=-100,to=100,by=0.0001)
              a<-pow(base,s,na.omit)
              result[i]<-s[which.min(abs(a-x[i]))]
            }else{
              return("it cannot calculate")
            }
          }else{
            return("x needs to be greater than or equal to 0")
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
    # inputs are not numeric
    return("invalid input")
  }
}
