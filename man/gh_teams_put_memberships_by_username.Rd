% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_teams_put_memberships_by_username}
\alias{gh_teams_put_memberships_by_username}
\title{Add team membership.}
\usage{
gh_teams_put_memberships_by_username(teamId, username, ...)
}
\arguments{
\item{teamId}{Id of team.}

\item{username}{Name of a member.}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
In order to add a membership between a user and a team, the authenticated user
must have 'admin' permissions to the team or be an owner of the organization
that the team is associated with.
}
\details{
If the user is already a part of the team's organization (meaning they're on at
least one other team in the organization), this endpoint will add the user to
the team.

If the user is completely unaffiliated with the team's organization (meaning
they're on none of the organization's teams), this endpoint will send an
invitation to the user via email. This newly-created membership will be in the
'pending' state until the user accepts the invitation, at which point the
membership will transition to the 'active' state and the user will be added as
a member of the team.

Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
