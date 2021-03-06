% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_gists_get_starred}
\alias{gh_gists_get_starred}
\title{List the authenticated user's starred gists.}
\usage{
gh_gists_get_starred(...)
}
\arguments{
\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
List the authenticated user's starred gists.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
