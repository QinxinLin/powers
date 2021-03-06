% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log.R
\name{log}
\alias{log}
\title{log transformation}
\usage{
log(x, base = exp(1), na.omit = FALSE)
}
\arguments{
\item{x}{The vector to be transformed if x>=0}

\item{base}{The base of the log transformation, the default is exp(1)}

\item{na.omit}{whether or not to remove NA, the default is FALSE}
}
\value{
A vector that is the log transformation of \code{x}
}
\description{
This function performs log transformation
}
\details{
The function calculates the log transformation of a vector
This function can only calculate the log transformation of x in the range:
base^(-100) <= x <= base^100
}
\examples{
log(1:10,2)
log(200,3)

}
