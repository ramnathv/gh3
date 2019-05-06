% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_repos_get_collaborators}
\alias{gh_repos_get_collaborators}
\title{List.}
\usage{
gh_repos_get_collaborators(owner, repo, ...)
}
\arguments{
\item{owner}{Name of repository owner.}

\item{repo}{Name of repository.}

\item{...}{Additional parameters to pass to gh::gh.}
}
\description{
When authenticating as an organization owner of an organization-owned
repository, all organization owners are included in the list of collaborators.
Otherwise, only users with access to the repository are returned in the
collaborators list.
}