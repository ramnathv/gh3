% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_repos_patch_pulls_by_number}
\alias{gh_repos_patch_pulls_by_number}
\title{Update a pull request.}
\usage{
gh_repos_patch_pulls_by_number(owner, repo, number, body, ...)
}
\arguments{
\item{owner}{Name of repository owner.}

\item{repo}{Name of repository.}

\item{number}{Id of pull.}

\item{body}{body}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
Update a pull request.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
