% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pow.R
\name{pow}
\alias{pow}
\title{Generic power function}
\usage{
pow(x, a, na.omit = FALSE)
}
\arguments{
\item{x}{Vector to raise to some power}

\item{a}{Power to raise \code{x} by}

\item{na.omit}{whether or to remove NA, the default is FALSE}
}
\value{
A vector that is the power of \code{x}
}
\description{
This function raises a vector to any power. I'm making it internal,
by not \code{export}ing, because I don't want users to use it.
}
\details{
This function isn't complicated.
This function requires the input to be numeric, if it is not,
an "invalid input" message will appear.
}
