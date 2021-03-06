% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_users_get_events}
\alias{gh_users_get_events}
\title{If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events.}
\usage{
gh_users_get_events(username, ...)
}
\arguments{
\item{username}{Name of user.}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
