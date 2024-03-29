% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_compare031_2samples.R
\name{rowsummary_2samples}
\alias{rowsummary_2samples}
\title{Summary arranged on rows for two groups}
\usage{
rowsummary_2samples(data, response, group, udm = "", signif = 3L)
}
\arguments{
\item{data}{the \code{data.frame} or \code{data.table} to be summarised.}

\item{response}{a string with the name of the variable to summarise.}

\item{group}{a string with the name of the grouping variable.}

\item{udm}{a string with the unit of measurement.}

\item{signif}{an integer with the number of desired significant figures.}
}
\value{
a \code{data.table} with 6 rows and \eqn{n + 1} columns for \eqn{n}
  levels of the group variable.
}
\description{
The function returns a table with max, mean, median, min, sd and n
 values arranged on rows whereas groups are on columns. Numbers are formatted as
 text in order to provide the desired significant figures.
}
