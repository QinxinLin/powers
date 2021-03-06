% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cube.R
\name{cube}
\alias{cube}
\title{Cube a vector}
\usage{
cube(x, na.omit = FALSE)
}
\arguments{
\item{x}{The vector be cubed}

\item{na.omit}{whether or not to remove NA, the default is FALSE}
}
\value{
A vector that is the cube of \code{x}
}
\description{
This function just raises a vector to the power of 3
}
\examples{
cube(1:10)
cube(3:8)
}
