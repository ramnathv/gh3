% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_orgs_post_repos}
\alias{gh_orgs_post_repos}
\title{Create a new repository for the authenticated user. OAuth users must supply}
\usage{
gh_orgs_post_repos(org, body, ...)
}
\arguments{
\item{org}{Name of organisation.}

\item{body}{body}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
repo scope.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
