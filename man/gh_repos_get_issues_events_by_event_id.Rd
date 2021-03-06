% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_repos_get_issues_events_by_event_id}
\alias{gh_repos_get_issues_events_by_event_id}
\title{Get a single event.}
\usage{
gh_repos_get_issues_events_by_event_id(owner, repo, eventId, ...)
}
\arguments{
\item{owner}{Name of repository owner.}

\item{repo}{Name of repository.}

\item{eventId}{Id of the event.}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
Get a single event.
}
\details{
Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
