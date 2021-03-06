% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_swedish_name.R
\name{generate_swedish_name}
\alias{generate_swedish_name}
\title{Generate Swedish Name}
\usage{
generate_swedish_name(sex = "b", return_separate_names = FALSE)
}
\arguments{
\item{sex}{Selects the desired sex for the generated name. Set to \code{f}, \code{m},
or \code{b}. Defaults to \code{b}}

\item{return_separate_names}{Selects whether to return first and last names
separate in a list. Defaults to \code{FALSE}.}
}
\value{
A character string or a list with a first and last name.
}
\description{
Generates a Swedish name using data on the one hundred most common female
first names, male first names, and last names in Sweden in 2020, according to
\href{http://www.scb.se/be0001}{Statistics Sweden}. The names are weighted by
frequency in the population. To generate a female name, set the \code{sex}
parameter to \code{f}, to generate a male name set it to \code{m}, and to generate a
name of either sex set it to \code{b}. Names can be returned as a character
string or as a list with a first name element and a last name element. This
behavior is set by the \code{return_separate_names} parameter.
}
\examples{
common_sounding_swedish_name <- generate_swedish_name()
}
