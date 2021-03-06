% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_orgs_post_teams}
\alias{gh_orgs_post_teams}
\title{Create team.}
\usage{
gh_orgs_post_teams(org, body, ...)
}
\arguments{
\item{org}{Name of organisation.}

\item{body}{body}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
In order to create a team, the authenticated user must be an owner of
organization.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
