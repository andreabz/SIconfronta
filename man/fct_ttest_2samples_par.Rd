% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_compare032_2samples_par.R
\name{fct_ttest_2samples_par}
\alias{fct_ttest_2samples_par}
\title{Displays the results of a \eqn{t}-test for two groups of values for one of
which only mean, standard deviation and number of samples are reported.}
\usage{
fct_ttest_2samples_par(
  group1,
  mean1,
  sd1,
  n1,
  group2,
  mean2,
  sd2,
  n2,
  significance = 0.95,
  alternative = "different"
)
}
\arguments{
\item{group1}{a character value with the name of the first group.}

\item{mean1}{a numeric value with the mean for the first group.}

\item{sd1}{a numeric value with the standard deviation for the first group.}

\item{n1}{a numeric value with the number of values for the first group.}

\item{group2}{a character value with the name of the second group.}

\item{mean2}{a numeric value with the mean for the second group.}

\item{sd2}{a numeric value with the standard deviation for the second group.}

\item{n2}{a numeric value with the number of values for the second group.}

\item{significance}{a number, typically either 0.90, 0.95 (default) or 0.99
indicating the confidence level for the test.}

\item{alternative}{a character string specifying the alternative hypothesis,
must be one of \code{"different"} or \code{"greater"}.}
}
\value{
A list with the following items:
 \describe{
   \item{hypotheses}{a named vector of strings, being \code{h0} and \code{h1}
   the null and alternative hypothesis, respectively.}
   \item{difference}{a named vector of numbers, being \code{mean},
   \code{lwrci} and \code{uprci} the difference in means of the two groups and
   the lower and upper ends of the confidence interval, respectively.
   The confidence interval is calculated considering both the \code{significance}
   and \code{alternative} arguments. For \code{alternative = "greater"} only the
   lower end of the confidence interval will be calculated.}
   \item{test}{a named vector of numbers, being \code{dof}, \code{tsper},
   \code{ttheo} and \code{pvalue} the degrees of freedom, the calculated value
   of the \eqn{t} statistic, the tabulated value of the \eqn{t} statistic and
   the \eqn{p}-value associated to the test. As in the original \code{t.test}
   function in base R, the statistic is calculated by performing a Welch test
   and approximating the actual number of degrees of freedom.}
   \item{result}{a string indicating whether H0 should be rejected or not.}
 }
}
\description{
The function displays the results of a \eqn{t}-test performed
 on two groups of values, for one of which only mean, standard deviation and
 number of samples are reported.
 The returned text is suitable for the {SI confronta} {shiny} app.
}
\details{
\eqn{t}-test is calculated using the group with the numerically
 larger mean as first argument.
 As a consequence, for the means of two series of values \eqn{A} and \eqn{B},
 being the first one numerically greater than the second one, the alternative
 hypothesis tested can only be \eqn{\bar{A} \neq \bar{B}}
 (\code{alternative = "different"}) or \eqn{\bar{A} > \bar{B}}
 (\code{alternative = "greater"}).
}
