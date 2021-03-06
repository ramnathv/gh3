% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_teams_get_memberships_by_username}
\alias{gh_teams_get_memberships_by_username}
\title{Get team membership.}
\usage{
gh_teams_get_memberships_by_username(teamId, username, ...)
}
\arguments{
\item{teamId}{Id of team.}

\item{username}{Name of a member.}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
In order to get a user's membership with a team, the authenticated user must be
a member of the team or an owner of the team's organization.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
