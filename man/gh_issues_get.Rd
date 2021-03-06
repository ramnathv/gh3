% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_issues_get}
\alias{gh_issues_get}
\title{List issues.}
\usage{
gh_issues_get(filter, state, labels, sort, direction, ...)
}
\arguments{
\item{filter}{Issues assigned to you / created by you / mentioning you / you're
subscribed to updates for / All issues the authenticated user can see}

\item{state}{state}

\item{labels}{String list of comma separated Label names. Example - bug,ui,@high.}

\item{sort}{sort}

\item{direction}{direction}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
List all issues across all the authenticated user's visible repositories.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
