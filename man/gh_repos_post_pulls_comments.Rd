% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gh3.R
\name{gh_repos_post_pulls_comments}
\alias{gh_repos_post_pulls_comments}
\title{Create a comment.}
\usage{
gh_repos_post_pulls_comments(owner, repo, number, body, ...)
}
\arguments{
\item{owner}{Name of repository owner.}

\item{repo}{Name of repository.}

\item{number}{Id of pull.}

\item{body}{body}

\item{...}{Additional parameters to pass to \code{\link[gh]{gh}}. See details.}
}
\description{
#TODO Alternative input ( http://developer.github.com/v3/pulls/comments/ )
description: | Alternative Input.  Instead of passing commit_id, path, and
position you can reply to an existing Pull Request Comment like this:
}
\details{
body Required string in_reply_to Required number - Comment id to reply to.

Additional parameters that can be passed:
\describe{
\item{type}{ It takes values in: all, public, private, forks, sources, member.
The default is: all}
\item{Accept}{Is used to set specified media type.  }
}
}
