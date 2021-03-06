% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_repos_get_labels_by_name}
\alias{gh_repos_get_labels_by_name}
\title{Get a single label.}
\usage{
gh_repos_get_labels_by_name(owner, repo, name, ...)
}
\arguments{
\item{owner}{Name of repository owner.}

\item{repo}{Name of repository.}

\item{name}{Name of the label.}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
Get a single label.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
