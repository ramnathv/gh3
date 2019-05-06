#' Lists all the emojis available to use on GitHub.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_emojis_get <- function(...){
  endpoint = 'GET /emojis'
  gh::gh(endpoint = endpoint, ...)           
}

#' List public events.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_events_get <- function(...){
  endpoint = 'GET /events'
  gh::gh(endpoint = endpoint, ...)           
}

#' List Feeds.
#' 
#' GitHub provides several timeline resources in Atom format. The Feeds API lists
#' all the feeds available to the authenticating user.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_feeds_get <- function(...){
  endpoint = 'GET /feeds'
  gh::gh(endpoint = endpoint, ...)           
}

#' List the authenticated user's gists or if called anonymously, this will
#' 
#' return all public gists.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get <- function(...){
  endpoint = 'GET /gists'
  gh::gh(endpoint = endpoint, ...)           
}

#' Create a gist.
#' 
#' 
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_post <- function(body, ...){
  endpoint = 'POST /gists'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' List all public gists.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_public <- function(...){
  endpoint = 'GET /gists/public'
  gh::gh(endpoint = endpoint, ...)           
}

#' List the authenticated user's starred gists.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_starred <- function(...){
  endpoint = 'GET /gists/starred'
  gh::gh(endpoint = endpoint, ...)           
}

#' Delete a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_delete_by_id <- function(id, ...){
  endpoint = 'DELETE /gists/:id'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Get a single gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_by_id <- function(id, ...){
  endpoint = 'GET /gists/:id'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Edit a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_patch_by_id <- function(id, body, ...){
  endpoint = 'PATCH /gists/:id'
  gh::gh(endpoint = endpoint, id = id, body = body, ...)           
}

#' List comments on a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_comments <- function(id, ...){
  endpoint = 'GET /gists/:id/comments'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Create a commen
#' 
#' 
#'
#' @param id Id of gist.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_post_comments <- function(id, body, ...){
  endpoint = 'POST /gists/:id/comments'
  gh::gh(endpoint = endpoint, id = id, body = body, ...)           
}

#' Delete a comment.
#' 
#' 
#'
#' @param id Id of gist.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_delete_comments_by_comment_id <- function(id, commentId, ...){
  endpoint = 'DELETE /gists/:id/comments/:commentId'
  gh::gh(endpoint = endpoint, id = id, commentId = commentId, ...)           
}

#' Get a single comment.
#' 
#' 
#'
#' @param id Id of gist.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_comments_by_comment_id <- function(id, commentId, ...){
  endpoint = 'GET /gists/:id/comments/:commentId'
  gh::gh(endpoint = endpoint, id = id, commentId = commentId, ...)           
}

#' Edit a comment.
#' 
#' 
#'
#' @param id Id of gist.
#' @param commentId Id of comment.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_patch_comments_by_comment_id <- function(id, commentId, body, ...){
  endpoint = 'PATCH /gists/:id/comments/:commentId'
  gh::gh(endpoint = endpoint, id = id, commentId = commentId, body = body, ...)           
}

#' Fork a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_post_forks <- function(id, ...){
  endpoint = 'POST /gists/:id/forks'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Unstar a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_delete_star <- function(id, ...){
  endpoint = 'DELETE /gists/:id/star'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Check if a gist is starred.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_get_star <- function(id, ...){
  endpoint = 'GET /gists/:id/star'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Star a gist.
#' 
#' 
#'
#' @param id Id of gist.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gists_put_star <- function(id, ...){
  endpoint = 'PUT /gists/:id/star'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Listing available templates.
#' 
#' List all templates available to pass as an option when creating a repository.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gitignore_get_templates <- function(...){
  endpoint = 'GET /gitignore/templates'
  gh::gh(endpoint = endpoint, ...)           
}

#' Get a single template.
#' 
#' 
#'
#' @param language language
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_gitignore_get_templates_by_language <- function(language, ...){
  endpoint = 'GET /gitignore/templates/:language'
  gh::gh(endpoint = endpoint, language = language, ...)           
}

#' List issues.
#' 
#' List all issues across all the authenticated user's visible repositories.
#'
#' @param filter Issues assigned to you / created by you / mentioning you / you're
#' subscribed to updates for / All issues the authenticated user can see
#' @param state state
#' @param labels String list of comma separated Label names. Example - bug,ui,@@high.
#' @param sort sort
#' @param direction direction
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_issues_get <- function(filter, state, labels, sort, direction, ...){
  endpoint = 'GET /issues'
  gh::gh(endpoint = endpoint, filter = filter, state = state, labels = labels, sort = sort, direction = direction, ...)           
}

#' Find issues by state and keyword.
#' 
#' 
#'
#' @param keyword The search term.
#' @param state Indicates the state of the issues to return. Can be either open or
#' closed.
#' @param owner owner
#' @param repository repository
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_legacy_get_issues_search_by_keyword <- function(keyword, state, owner, repository, ...){
  endpoint = 'GET /legacy/issues/search/:owner/:repository/:state/:keyword'
  gh::gh(endpoint = endpoint, keyword = keyword, state = state, owner = owner, repository = repository, ...)           
}

#' Find repositories by keyword. Note, this legacy method does not follow the v3 pagination pattern. This method returns up to 100 results per page and pages can be fetched using the start_page parameter.
#' 
#' 
#'
#' @param keyword The search term
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_legacy_get_repos_search_by_keyword <- function(keyword, ...){
  endpoint = 'GET /legacy/repos/search/:keyword'
  gh::gh(endpoint = endpoint, keyword = keyword, ...)           
}

#' This API call is added for compatibility reasons only.
#' 
#' 
#'
#' @param email The email address
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_legacy_get_user_email_by_email <- function(email, ...){
  endpoint = 'GET /legacy/user/email/:email'
  gh::gh(endpoint = endpoint, email = email, ...)           
}

#' Find users by keyword.
#' 
#' 
#'
#' @param keyword The search term
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_legacy_get_user_search_by_keyword <- function(keyword, ...){
  endpoint = 'GET /legacy/user/search/:keyword'
  gh::gh(endpoint = endpoint, keyword = keyword, ...)           
}

#' Render an arbitrary Markdown document
#' 
#' 
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_markdown_post <- function(body, ...){
  endpoint = 'POST /markdown'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' Render a Markdown document in raw mode
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_markdown_post_raw <- function(...){
  endpoint = 'POST /markdown/raw'
  gh::gh(endpoint = endpoint, ...)           
}

#' This gives some information about GitHub.com, the service.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_meta_get <- function(...){
  endpoint = 'GET /meta'
  gh::gh(endpoint = endpoint, ...)           
}

#' List public events for a network of repositories.
#' 
#' 
#'
#' @param owner Name of the owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_networks_get_events <- function(owner, repo, ...){
  endpoint = 'GET /networks/:owner/:repo/events'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List your notifications.
#' 
#' List all notifications for the current user, grouped by repository.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_get <- function(...){
  endpoint = 'GET /notifications'
  gh::gh(endpoint = endpoint, ...)           
}

#' Mark as read.
#' 
#' Marking a notification as "read" removes it from the default view on
#' GitHub.com.
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_put <- function(body, ...){
  endpoint = 'PUT /notifications'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' View a single thread.
#' 
#' 
#'
#' @param id Id of thread.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_get_threads_by_id <- function(id, ...){
  endpoint = 'GET /notifications/threads/:id'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Mark a thread as read
#' 
#' 
#'
#' @param id Id of thread.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_patch_threads_by_id <- function(id, ...){
  endpoint = 'PATCH /notifications/threads/:id'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Delete a Thread Subscription.
#' 
#' 
#'
#' @param id Id of thread.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_delete_threads_subscription <- function(id, ...){
  endpoint = 'DELETE /notifications/threads/:id/subscription'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Get a Thread Subscription.
#' 
#' 
#'
#' @param id Id of thread.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_get_threads_subscription <- function(id, ...){
  endpoint = 'GET /notifications/threads/:id/subscription'
  gh::gh(endpoint = endpoint, id = id, ...)           
}

#' Set a Thread Subscription.
#' 
#' This lets you subscribe to a thread, or ignore it. Subscribing to a thread is
#' unnecessary if the user is already subscribed to the repository. Ignoring a
#' thread will mute all future notifications (until you comment or get
#' @mentioned).
#'
#' @param id Id of thread.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_notifications_put_threads_subscription <- function(id, body, ...){
  endpoint = 'PUT /notifications/threads/:id/subscription'
  gh::gh(endpoint = endpoint, id = id, body = body, ...)           
}

#' Get an Organization.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_by_org <- function(org, ...){
  endpoint = 'GET /orgs/:org'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' Edit an Organization.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_patch_by_org <- function(org, body, ...){
  endpoint = 'PATCH /orgs/:org'
  gh::gh(endpoint = endpoint, org = org, body = body, ...)           
}

#' List public events for an organization.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_events <- function(org, ...){
  endpoint = 'GET /orgs/:org/events'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' List issues.
#' 
#' List all issues for a given organization for the authenticated user.
#'
#' @param org Name of organisation.
#' @param filter Issues assigned to you / created by you / mentioning you / you're
#' subscribed to updates for / All issues the authenticated user can see
#' @param state state
#' @param labels String list of comma separated Label names. Example - bug,ui,@@high.
#' @param sort sort
#' @param direction direction
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_issues <- function(org, filter, state, labels, sort, direction, ...){
  endpoint = 'GET /orgs/:org/issues'
  gh::gh(endpoint = endpoint, org = org, filter = filter, state = state, labels = labels, sort = sort, direction = direction, ...)           
}

#' Members list.
#' 
#' List all users who are members of an organization. A member is a user tha
#' belongs to at least 1 team in the organization. If the authenticated user is
#' also an owner of this organization then both concealed and public members will
#' be returned. If the requester is not an owner of the organization the query
#' will be redirected to the public members list.
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_members <- function(org, ...){
  endpoint = 'GET /orgs/:org/members'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' Remove a member.
#' 
#' Removing a user from this list will remove them from all teams and they will no
#' longer have any access to the organization's repositories.
#'
#' @param org Name of organisation.
#' @param username Name of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_delete_members_by_username <- function(org, username, ...){
  endpoint = 'DELETE /orgs/:org/members/:username'
  gh::gh(endpoint = endpoint, org = org, username = username, ...)           
}

#' Check if a user is, publicly or privately, a member of the organization.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param username Name of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_members_by_username <- function(org, username, ...){
  endpoint = 'GET /orgs/:org/members/:username'
  gh::gh(endpoint = endpoint, org = org, username = username, ...)           
}

#' Public members list.
#' 
#' Members of an organization can choose to have their membership publicized or
#' not.
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_public_members <- function(org, ...){
  endpoint = 'GET /orgs/:org/public_members'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' Conceal a user's membership.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param username Name of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_delete_public_members_by_username <- function(org, username, ...){
  endpoint = 'DELETE /orgs/:org/public_members/:username'
  gh::gh(endpoint = endpoint, org = org, username = username, ...)           
}

#' Check public membership.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param username Name of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_public_members_by_username <- function(org, username, ...){
  endpoint = 'GET /orgs/:org/public_members/:username'
  gh::gh(endpoint = endpoint, org = org, username = username, ...)           
}

#' Publicize a user's membership.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param username Name of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_put_public_members_by_username <- function(org, username, ...){
  endpoint = 'PUT /orgs/:org/public_members/:username'
  gh::gh(endpoint = endpoint, org = org, username = username, ...)           
}

#' List repositories for the specified org.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_repos <- function(org, ...){
  endpoint = 'GET /orgs/:org/repos'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' Create a new repository for the authenticated user. OAuth users must supply
#' 
#' repo scope.
#'
#' @param org Name of organisation.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_post_repos <- function(org, body, ...){
  endpoint = 'POST /orgs/:org/repos'
  gh::gh(endpoint = endpoint, org = org, body = body, ...)           
}

#' List teams.
#' 
#' 
#'
#' @param org Name of organisation.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_get_teams <- function(org, ...){
  endpoint = 'GET /orgs/:org/teams'
  gh::gh(endpoint = endpoint, org = org, ...)           
}

#' Create team.
#' 
#' In order to create a team, the authenticated user must be an owner of
#' organization.
#'
#' @param org Name of organisation.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_orgs_post_teams <- function(org, body, ...){
  endpoint = 'POST /orgs/:org/teams'
  gh::gh(endpoint = endpoint, org = org, body = body, ...)           
}

#' Get your current rate limit status
#' 
#' Note: Accessing this endpoint does not count against your rate limit.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_rate_limit_get <- function(...){
  endpoint = 'GET /rate_limit'
  gh::gh(endpoint = endpoint, ...)           
}

#' Delete a Repository.
#' 
#' Deleting a repository requires admin access. If OAuth is used, the delete_repo
#' scope is required.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_by_repo <- function(owner, repo, ...){
  endpoint = 'DELETE /repos/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_by_repo <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Edit repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_by_repo <- function(owner, repo, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' List assignees.
#' 
#' This call lists all the available assignees (owner + collaborators) to which
#' issues may be assigned.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_assignees <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/assignees'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Check assignee.
#' 
#' You may also check to see if a particular user is an assignee for a repository.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param assignee Login of the assignee.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_assignees_by_assignee <- function(owner, repo, assignee, ...){
  endpoint = 'GET /repos/:owner/:repo/assignees/:assignee'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, assignee = assignee, ...)           
}

#' Get list of branches
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_branches <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/branches'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get Branch
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param branch Name of the branch.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_branches_by_branch <- function(owner, repo, branch, ...){
  endpoint = 'GET /repos/:owner/:repo/branches/:branch'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, branch = branch, ...)           
}

#' List.
#' 
#' When authenticating as an organization owner of an organization-owned
#' repository, all organization owners are included in the list of collaborators.
#' Otherwise, only users with access to the repository are returned in the
#' collaborators list.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_collaborators <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/collaborators'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Remove collaborator.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param user Login of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_collaborators_by_user <- function(owner, repo, user, ...){
  endpoint = 'DELETE /repos/:owner/:repo/collaborators/:user'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, user = user, ...)           
}

#' Check if user is a collaborator
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param user Login of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_collaborators_by_user <- function(owner, repo, user, ...){
  endpoint = 'GET /repos/:owner/:repo/collaborators/:user'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, user = user, ...)           
}

#' Add collaborator.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param user Login of the user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_collaborators_by_user <- function(owner, repo, user, ...){
  endpoint = 'PUT /repos/:owner/:repo/collaborators/:user'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, user = user, ...)           
}

#' List commit comments for a repository.
#' 
#' Comments are ordered by ascending ID.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_comments <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Delete a commit comment
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Get a single commit comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'GET /repos/:owner/:repo/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Update a commit comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_comments_by_comment_id <- function(owner, repo, commentId, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, body = body, ...)           
}

#' List commits on a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_commits <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/commits'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get the combined Status for a specific Ref
#' 
#' The Combined status endpoint is currently available for developers to preview.
#' During the preview period, the API may change without advance notice. Please
#' see the blog post for full details. To access this endpoint during the preview
#' period, you must provide a custom media type in the Accept header:
#' application/vnd.github.she-hulk-preview+json
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref ref
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_commits_status <- function(owner, repo, ref, ...){
  endpoint = 'GET /repos/:owner/:repo/commits/:ref/status'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, ...)           
}

#' Get a single commit.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode SHA-1 code of the commit.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_commits_by_sha_code <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/commits/:shaCode'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' List comments for a single commitList comments for a single commit.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode SHA-1 code of the commit.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_commits_comments <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/commits/:shaCode/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' Create a commit comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode SHA-1 code of the commit.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_commits_comments <- function(owner, repo, shaCode, body, ...){
  endpoint = 'POST /repos/:owner/:repo/commits/:shaCode/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, body = body, ...)           
}

#' Compare two commits
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param baseId baseId
#' @param headId headId
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_compare_by_base_id_head_id <- function(owner, repo, baseId, headId, ...){
  endpoint = 'GET /repos/:owner/:repo/compare/:baseId...:headId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, baseId = baseId, headId = headId, ...)           
}

#' Delete a file.
#' 
#' This method deletes a file in a repository.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param path path
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_contents_by_path <- function(owner, repo, path, body, ...){
  endpoint = 'DELETE /repos/:owner/:repo/contents/:path'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, path = path, body = body, ...)           
}

#' Get contents.
#' 
#' This method returns the contents of a file or directory in a repository. Files
#' and symlinks support a custom media type for getting the raw content.
#' Directories and submodules do not support custom media types. Note: This API
#' supports files up to 1 megabyte in size. Here can be many outcomes. For details
#' see "http://developer.github.com/v3/repos/contents/"
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param path path
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_contents_by_path <- function(owner, repo, path, ...){
  endpoint = 'GET /repos/:owner/:repo/contents/:path'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, path = path, ...)           
}

#' Create a file.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param path path
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_contents_by_path <- function(owner, repo, path, body, ...){
  endpoint = 'PUT /repos/:owner/:repo/contents/:path'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, path = path, body = body, ...)           
}

#' Get list of contributors.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param anon Set to 1 or true to include anonymous contributors in results.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_contributors <- function(owner, repo, anon, ...){
  endpoint = 'GET /repos/:owner/:repo/contributors'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, anon = anon, ...)           
}

#' Users with pull access can view deployments for a repository
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_deployments <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/deployments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Users with push access can create a deployment for a given ref
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_deployments <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/deployments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Users with pull access can view deployment statuses for a deployment
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id The Deployment ID to list the statuses from.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_deployments_statuses <- function(owner, repo, id, ...){
  endpoint = 'GET /repos/:owner/:repo/deployments/:id/statuses'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' Create a Deployment Status
#' 
#' Users with push access can create deployment statuses for a given deployment:
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id The Deployment ID to list the statuses from.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_deployments_statuses <- function(owner, repo, id, body, ...){
  endpoint = 'POST /repos/:owner/:repo/deployments/:id/statuses'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, body = body, ...)           
}

#' Deprecated. List downloads for a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_downloads <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/downloads'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Deprecated. Delete a download.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param downloadId Id of download.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_downloads_by_download_id <- function(owner, repo, downloadId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/downloads/:downloadId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, downloadId = downloadId, ...)           
}

#' Deprecated. Get a single download.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param downloadId Id of download.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_downloads_by_download_id <- function(owner, repo, downloadId, ...){
  endpoint = 'GET /repos/:owner/:repo/downloads/:downloadId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, downloadId = downloadId, ...)           
}

#' Get list of repository events.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_events <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/events'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List forks.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_forks <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/forks'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a fork.
#' 
#' Forking a Repository happens asynchronously. Therefore, you may have to wai a
#' short period before accessing the git objects. If this takes longer than 5
#' minutes, be sure to contact Support.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_forks <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/forks'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Create a Blob.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_git_blobs <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/git/blobs'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Get a Blob.
#' 
#' Since blobs can be any arbitrary binary data, the input and responses for the
#' blob API takes an encoding parameter that can be either utf-8 or base64. If
#' your data cannot be losslessly sent as a UTF-8 string, you can base64 encode
#' it.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode SHA-1 code.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_blobs_by_sha_code <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/git/blobs/:shaCode'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' Create a Commit.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_git_commits <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/git/commits'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Get a Commit.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode SHA-1 code.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_commits_by_sha_code <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/git/commits/:shaCode'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' Get all References
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_refs <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/git/refs'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a Reference
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_git_refs <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/git/refs'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a Reference
#' 
#' Example: Deleting a branch: DELETE
#' /repos/octocat/Hello-World/git/refs/heads/feature-a Example: Deleting a tag:
#' DELETE /repos/octocat/Hello-World/git/refs/tags/v1.0
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref ref
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_git_refs_by_ref <- function(owner, repo, ref, ...){
  endpoint = 'DELETE /repos/:owner/:repo/git/refs/:ref'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, ...)           
}

#' Get a Reference
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref ref
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_refs_by_ref <- function(owner, repo, ref, ...){
  endpoint = 'GET /repos/:owner/:repo/git/refs/:ref'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, ...)           
}

#' Update a Reference
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref ref
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_git_refs_by_ref <- function(owner, repo, ref, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/git/refs/:ref'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, body = body, ...)           
}

#' Create a Tag Object.
#' 
#' Note that creating a tag object does not create the reference that makes a tag
#' in Git. If you want to create an annotated tag in Git, you have to do this call
#' to create the tag object, and then create the refs/tags/[tag] reference. If you
#' want to create a lightweight tag, you only have to create the tag reference -
#' this call would be unnecessary.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_git_tags <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/git/tags'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Get a Tag.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode shaCode
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_tags_by_sha_code <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/git/tags/:shaCode'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' Create a Tree.
#' 
#' The tree creation API will take nested entries as well. If both a tree and a
#' nested path modifying that tree are specified, it will overwrite the contents
#' of that tree with the new path contents and write a new tree out.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_git_trees <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/git/trees'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Get a Tree.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param shaCode Tree SHA.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_git_trees_by_sha_code <- function(owner, repo, shaCode, ...){
  endpoint = 'GET /repos/:owner/:repo/git/trees/:shaCode'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, shaCode = shaCode, ...)           
}

#' Get list of hooks.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_hooks <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/hooks'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a hook.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_hooks <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/hooks'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a hook.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param hookId Id of hook.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_hooks_by_hook_id <- function(owner, repo, hookId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/hooks/:hookId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, hookId = hookId, ...)           
}

#' Get single hook.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param hookId Id of hook.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_hooks_by_hook_id <- function(owner, repo, hookId, ...){
  endpoint = 'GET /repos/:owner/:repo/hooks/:hookId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, hookId = hookId, ...)           
}

#' Edit a hook.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param hookId Id of hook.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_hooks_by_hook_id <- function(owner, repo, hookId, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/hooks/:hookId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, hookId = hookId, body = body, ...)           
}

#' Test a push hook.
#' 
#' This will trigger the hook with the latest push to the current repository if
#' the hook is subscribed to push events. If the hook is not subscribed to push
#' events, the server will respond with 204 but no test POST will be generated.
#' Note: Previously /repos/:owner/:repo/hooks/:id/tes
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param hookId Id of hook.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_hooks_tests <- function(owner, repo, hookId, ...){
  endpoint = 'POST /repos/:owner/:repo/hooks/:hookId/tests'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, hookId = hookId, ...)           
}

#' List issues for a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param filter Issues assigned to you / created by you / mentioning you / you're
#' subscribed to updates for / All issues the authenticated user can see
#' @param state state
#' @param labels String list of comma separated Label names. Example - bug,ui,@@high.
#' @param sort sort
#' @param direction direction
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues <- function(owner, repo, filter, state, labels, sort, direction, ...){
  endpoint = 'GET /repos/:owner/:repo/issues'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, filter = filter, state = state, labels = labels, sort = sort, direction = direction, ...)           
}

#' Create an issue.
#' 
#' Any user with pull access to a repository can create an issue.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_issues <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/issues'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' List comments in a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_comments <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Delete a comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId ID of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_issues_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/issues/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Get a single comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId ID of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Edit a comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId ID of comment.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_issues_comments_by_comment_id <- function(owner, repo, commentId, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/issues/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, body = body, ...)           
}

#' List issue events for a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_events <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/events'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get a single event.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param eventId Id of the event.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_events_by_event_id <- function(owner, repo, eventId, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/events/:eventId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, eventId = eventId, ...)           
}

#' Get a single issue
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_by_number <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Edit an issue.
#' 
#' Issue owners and users with push access can edit an issue.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_issues_by_number <- function(owner, repo, number, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/issues/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' List comments on an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_comments <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/:number/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Create a comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_issues_comments <- function(owner, repo, number, body, ...){
  endpoint = 'POST /repos/:owner/:repo/issues/:number/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' List events for an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_events <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/:number/events'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Remove all labels from an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_issues_labels <- function(owner, repo, number, ...){
  endpoint = 'DELETE /repos/:owner/:repo/issues/:number/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' List labels on an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_issues_labels <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/issues/:number/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Add labels to an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_issues_labels <- function(owner, repo, number, body, ...){
  endpoint = 'POST /repos/:owner/:repo/issues/:number/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' Replace all labels for an issue.
#' 
#' Sending an empty array ([]) will remove all Labels from the Issue.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_issues_labels <- function(owner, repo, number, body, ...){
  endpoint = 'PUT /repos/:owner/:repo/issues/:number/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' Remove a label from an issue.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of issue.
#' @param name Name of the label.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_issues_labels_by_name <- function(owner, repo, number, name, ...){
  endpoint = 'DELETE /repos/:owner/:repo/issues/:number/labels/:name'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, name = name, ...)           
}

#' Get list of keys.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_keys <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/keys'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a key.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_keys <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/keys'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a key.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param keyId Id of key.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_keys_by_key_id <- function(owner, repo, keyId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/keys/:keyId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, keyId = keyId, ...)           
}

#' Get a key
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param keyId Id of key.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_keys_by_key_id <- function(owner, repo, keyId, ...){
  endpoint = 'GET /repos/:owner/:repo/keys/:keyId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, keyId = keyId, ...)           
}

#' List all labels for this repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_labels <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a label.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_labels <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a label.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param name Name of the label.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_labels_by_name <- function(owner, repo, name, ...){
  endpoint = 'DELETE /repos/:owner/:repo/labels/:name'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, name = name, ...)           
}

#' Get a single label.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param name Name of the label.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_labels_by_name <- function(owner, repo, name, ...){
  endpoint = 'GET /repos/:owner/:repo/labels/:name'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, name = name, ...)           
}

#' Update a label.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param name Name of the label.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_labels_by_name <- function(owner, repo, name, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/labels/:name'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, name = name, body = body, ...)           
}

#' List languages.
#' 
#' List languages for the specified repository. The value on the right of a
#' language is the number of bytes of code written in that language.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_languages <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/languages'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Perform a merge.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_merges <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/merges'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' List milestones for a repository.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_milestones <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/milestones'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a milestone.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_milestones <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/milestones'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a milestone.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of milestone.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_milestones_by_number <- function(owner, repo, number, ...){
  endpoint = 'DELETE /repos/:owner/:repo/milestones/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Get a single milestone.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of milestone.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_milestones_by_number <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/milestones/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Update a milestone.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of milestone.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_milestones_by_number <- function(owner, repo, number, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/milestones/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' Get labels for every issue in a milestone.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Number of milestone.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_milestones_labels <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/milestones/:number/labels'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' List your notifications in a repository
#' 
#' List all notifications for the current user.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_notifications <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/notifications'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Mark notifications as read in a repository.
#' 
#' Marking all notifications in a repository as "read" removes them from the
#' default view on GitHub.com.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_notifications <- function(owner, repo, body, ...){
  endpoint = 'PUT /repos/:owner/:repo/notifications'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' List pull requests.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a pull request.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_pulls <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/pulls'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' List comments in a repository.
#' 
#' By default, Review Comments are ordered by ascending ID.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_comments <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Delete a comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_pulls_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'DELETE /repos/:owner/:repo/pulls/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Get a single comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_comments_by_comment_id <- function(owner, repo, commentId, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, ...)           
}

#' Edit a comment.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param commentId Id of comment.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_pulls_comments_by_comment_id <- function(owner, repo, commentId, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/pulls/comments/:commentId'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, commentId = commentId, body = body, ...)           
}

#' Get a single pull request.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_by_number <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Update a pull request.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_pulls_by_number <- function(owner, repo, number, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/pulls/:number'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' List comments on a pull request.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_comments <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/:number/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Create a comment.
#' 
#' #TODO Alternative input ( http://developer.github.com/v3/pulls/comments/ )
#' description: | Alternative Input.  Instead of passing commit_id, path, and
#' position you can reply to an existing Pull Request Comment like this:
#' 
#' body Required string in_reply_to Required number - Comment id to reply to.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_pulls_comments <- function(owner, repo, number, body, ...){
  endpoint = 'POST /repos/:owner/:repo/pulls/:number/comments'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' List commits on a pull request.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_commits <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/:number/commits'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' List pull requests files.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_files <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/:number/files'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Get if a pull request has been merged.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_pulls_merge <- function(owner, repo, number, ...){
  endpoint = 'GET /repos/:owner/:repo/pulls/:number/merge'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, ...)           
}

#' Merge a pull request (Merge Button's)
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param number Id of pull.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_pulls_merge <- function(owner, repo, number, body, ...){
  endpoint = 'PUT /repos/:owner/:repo/pulls/:number/merge'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, number = number, body = body, ...)           
}

#' Get the README.
#' 
#' This method returns the preferred README for a repository.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_readme <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/readme'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Users with push access to the repository will receive all releases (i.e., published releases and draft releases). Users with pull access will receive published releases only
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_releases <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/releases'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Create a release
#' 
#' Users with push access to the repository can create a release.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_releases <- function(owner, repo, body, ...){
  endpoint = 'POST /repos/:owner/:repo/releases'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Delete a release asset
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_releases_assets_by_id <- function(owner, repo, id, ...){
  endpoint = 'DELETE /repos/:owner/:repo/releases/assets/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' Get a single release asset
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_releases_assets_by_id <- function(owner, repo, id, ...){
  endpoint = 'GET /repos/:owner/:repo/releases/assets/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' Edit a release asset
#' 
#' Users with push access to the repository can edit a release asset.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_releases_assets_by_id <- function(owner, repo, id, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/releases/assets/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, body = body, ...)           
}

#' Users with push access to the repository can delete a release.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_releases_by_id <- function(owner, repo, id, ...){
  endpoint = 'DELETE /repos/:owner/:repo/releases/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' Get a single release
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_releases_by_id <- function(owner, repo, id, ...){
  endpoint = 'GET /repos/:owner/:repo/releases/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' Users with push access to the repository can edit a release
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_patch_releases_by_id <- function(owner, repo, id, body, ...){
  endpoint = 'PATCH /repos/:owner/:repo/releases/:id'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, body = body, ...)           
}

#' List assets for a release
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param id id
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_releases_assets <- function(owner, repo, id, ...){
  endpoint = 'GET /repos/:owner/:repo/releases/:id/assets'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, id = id, ...)           
}

#' List Stargazers.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stargazers <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stargazers'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get the number of additions and deletions per week.
#' 
#' Returns a weekly aggregate of the number of additions and deletions pushed to a
#' repository.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stats_code_frequency <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stats/code_frequency'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get the last year of commit activity data.
#' 
#' Returns the last year of commit activity grouped by week. The days array is a
#' group of commits per day, starting on Sunday.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stats_commit_activity <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stats/commit_activity'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get contributors list with additions, deletions, and commit counts.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stats_contributors <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stats/contributors'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get the weekly commit count for the repo owner and everyone else.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stats_participation <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stats/participation'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get the number of commits per hour in each day.
#' 
#' Each array contains the day number, hour number, and number of commits 0-6
#' Sunday - Saturday 0-23 Hour of day Number of commits
#' 
#' For example, [2, 14, 25] indicates that there were 25 total commits, during the
#' 2.00pm hour on Tuesdays. All times are based on the time zone of individual
#' commits.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_stats_punch_card <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/stats/punch_card'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List Statuses for a specific Ref.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref Ref to list the statuses from. It can be a SHA, a branch name, or a tag
#' name.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_statuses_by_ref <- function(owner, repo, ref, ...){
  endpoint = 'GET /repos/:owner/:repo/statuses/:ref'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, ...)           
}

#' Create a Status.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ref Ref to list the statuses from. It can be a SHA, a branch name, or a tag
#' name.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_post_statuses_by_ref <- function(owner, repo, ref, body, ...){
  endpoint = 'POST /repos/:owner/:repo/statuses/:ref'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ref = ref, body = body, ...)           
}

#' List watchers.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_subscribers <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/subscribers'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Delete a Repository Subscription.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_delete_subscription <- function(owner, repo, ...){
  endpoint = 'DELETE /repos/:owner/:repo/subscription'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get a Repository Subscription.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_subscription <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/subscription'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Set a Repository Subscription
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_put_subscription <- function(owner, repo, body, ...){
  endpoint = 'PUT /repos/:owner/:repo/subscription'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, body = body, ...)           
}

#' Get list of tags.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_tags <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/tags'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get list of teams
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_teams <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/teams'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List Stargazers. New implementation.
#' 
#' 
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_watchers <- function(owner, repo, ...){
  endpoint = 'GET /repos/:owner/:repo/watchers'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Get archive link.
#' 
#' This method will return a 302 to a URL to download a tarball or zipball archive
#' for a repository. Please make sure your HTTP framework is configured to follow
#' redirects or you will need to use the Location header to make a second GET
#' request. Note: For private repositories, these links are temporary and expire
#' quickly.
#'
#' @param owner Name of repository owner.
#' @param repo Name of repository.
#' @param archive_format archive_format
#' @param path Valid Git reference, defaults to 'master'.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repos_get_by_path <- function(owner, repo, archive_format, path, ...){
  endpoint = 'GET /repos/:owner/:repo/:archive_format/:path'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, archive_format = archive_format, path = path, ...)           
}

#' List all public repositories.
#' 
#' This provides a dump of every public repository, in the order that they were
#' created. Note: Pagination is powered exclusively by the since parameter. is the
#' Link header to get the URL for the next page of repositories.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_repositories_get <- function(...){
  endpoint = 'GET /repositories'
  gh::gh(endpoint = endpoint, ...)           
}

#' Search code.
#' 
#' 
#'
#' @param q The search terms. This can be any combination of the supported code search
#' parameters: 'Search In' Qualifies which fields are searched. With this
#' qualifier you can restrict the search to just the file contents, the file path,
#' or both. 'Languages' Searches code based on the language it's written in.
#' 'Forks' Filters repositories based on the number of forks, and/or whether code
#' from forked repositories should be included in the results at all. 'Size' Finds
#' files that match a certain size (in bytes). 'Path' Specifies the path that the
#' resulting file must be at. 'Extension' Matches files with a certain extension.
#' 'Users' or 'Repositories' Limits searches to a specific user or repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_search_get_code <- function(q, ...){
  endpoint = 'GET /search/code'
  gh::gh(endpoint = endpoint, q = q, ...)           
}

#' Find issues by state and keyword. (This method returns up to 100 results per page.)
#' 
#' 
#'
#' @param q The q search term can also contain any combination of the supported issue
#' search qualifiers:
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_search_get_issues <- function(q, ...){
  endpoint = 'GET /search/issues'
  gh::gh(endpoint = endpoint, q = q, ...)           
}

#' Search repositories.
#' 
#' 
#'
#' @param q The search terms. This can be any combination of the supported repository
#' search parameters: 'Search In' Qualifies which fields are searched. With this
#' qualifier you can restrict the search to just the repository name, description,
#' readme, or any combination of these. 'Size' Finds repositories that match a
#' certain size (in kilobytes). 'Forks' Filters repositories based on the number
#' of forks, and/or whether forked repositories should be included in the results
#' at all. 'Created' and 'Last Updated' Filters repositories based on times of
#' creation, or when they were last updated. 'Users or Repositories' Limits
#' searches to a specific user or repository. 'Languages' Searches repositories
#' based on the language they are written in. 'Stars' Searches repositories based
#' on the number of stars.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_search_get_repositories <- function(q, ...){
  endpoint = 'GET /search/repositories'
  gh::gh(endpoint = endpoint, q = q, ...)           
}

#' Search users.
#' 
#' 
#'
#' @param q The search terms. This can be any combination of the supported user search
#' parameters: 'Search In' Qualifies which fields are searched. With this
#' qualifier you can restrict the search to just the username, public email, full
#' name, location, or any combination of these. 'Repository count' Filters users
#' based on the number of repositories they have. 'Location' Filter users by the
#' location indicated in their profile. 'Language' Search for users that have
#' repositories that match a certain language. 'Created' Filter users based on
#' when they joined. 'Followers' Filter users based on the number of followers
#' they have.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_search_get_users <- function(q, ...){
  endpoint = 'GET /search/users'
  gh::gh(endpoint = endpoint, q = q, ...)           
}

#' Delete team.
#' 
#' In order to delete a team, the authenticated user must be an owner of the org
#' that the team is associated with.
#'
#' @param teamId Id of team.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_delete_by_team_id <- function(teamId, ...){
  endpoint = 'DELETE /teams/:teamId'
  gh::gh(endpoint = endpoint, teamId = teamId, ...)           
}

#' Get team.
#' 
#' 
#'
#' @param teamId Id of team.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_by_team_id <- function(teamId, ...){
  endpoint = 'GET /teams/:teamId'
  gh::gh(endpoint = endpoint, teamId = teamId, ...)           
}

#' Edit team.
#' 
#' In order to edit a team, the authenticated user must be an owner of the org
#' that the team is associated with.
#'
#' @param teamId Id of team.
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_patch_by_team_id <- function(teamId, body, ...){
  endpoint = 'PATCH /teams/:teamId'
  gh::gh(endpoint = endpoint, teamId = teamId, body = body, ...)           
}

#' List team members.
#' 
#' In order to list members in a team, the authenticated user must be a member of
#' the team.
#'
#' @param teamId Id of team.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_members <- function(teamId, ...){
  endpoint = 'GET /teams/:teamId/members'
  gh::gh(endpoint = endpoint, teamId = teamId, ...)           
}

#' The "Remove team member" API is deprecated and is scheduled for removal in the next major version of the API. We recommend using the Remove team membership API instead. It allows you to remove both active and pending memberships.
#' 
#' Remove team member. In order to remove a user from a team, the authenticated
#' user must have 'admin' permissions to the team or be an owner of the org that
#' the team is associated with. NOTE This does not delete the user, it just remove
#' them from the team.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_delete_members_by_username <- function(teamId, username, ...){
  endpoint = 'DELETE /teams/:teamId/members/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' The "Get team member" API is deprecated and is scheduled for removal in the next major version of the API. We recommend using the Get team membership API instead. It allows you to get both active and pending memberships.
#' 
#' Get team member. In order to get if a user is a member of a team, the
#' authenticated user mus be a member of the team.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_members_by_username <- function(teamId, username, ...){
  endpoint = 'GET /teams/:teamId/members/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' The API (described below) is deprecated and is scheduled for removal in the next major version of the API. We recommend using the Add team membership API instead. It allows you to invite new organization members to your teams.
#' 
#' Add team member. In order to add a user to a team, the authenticated user must
#' have 'admin' permissions to the team or be an owner of the org that the team is
#' associated with.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_put_members_by_username <- function(teamId, username, ...){
  endpoint = 'PUT /teams/:teamId/members/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' Remove team membership.
#' 
#' In order to remove a membership between a user and a team, the authenticated
#' user must have 'admin' permissions to the team or be an owner of the
#' organization that the team is associated with. NOTE: This does not delete the
#' user, it just removes their membership from the team.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_delete_memberships_by_username <- function(teamId, username, ...){
  endpoint = 'DELETE /teams/:teamId/memberships/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' Get team membership.
#' 
#' In order to get a user's membership with a team, the authenticated user must be
#' a member of the team or an owner of the team's organization.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_memberships_by_username <- function(teamId, username, ...){
  endpoint = 'GET /teams/:teamId/memberships/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' Add team membership.
#' 
#' In order to add a membership between a user and a team, the authenticated user
#' must have 'admin' permissions to the team or be an owner of the organization
#' that the team is associated with.
#' 
#' If the user is already a part of the team's organization (meaning they're on at
#' least one other team in the organization), this endpoint will add the user to
#' the team.
#' 
#' If the user is completely unaffiliated with the team's organization (meaning
#' they're on none of the organization's teams), this endpoint will send an
#' invitation to the user via email. This newly-created membership will be in the
#' 'pending' state until the user accepts the invitation, at which point the
#' membership will transition to the 'active' state and the user will be added as
#' a member of the team.
#'
#' @param teamId Id of team.
#' @param username Name of a member.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_put_memberships_by_username <- function(teamId, username, ...){
  endpoint = 'PUT /teams/:teamId/memberships/:username'
  gh::gh(endpoint = endpoint, teamId = teamId, username = username, ...)           
}

#' List team repos
#' 
#' 
#'
#' @param teamId Id of team.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_repos <- function(teamId, ...){
  endpoint = 'GET /teams/:teamId/repos'
  gh::gh(endpoint = endpoint, teamId = teamId, ...)           
}

#' In order to remove a repository from a team, the authenticated user must be an owner of the org that the team is associated with. NOTE: This does not delete the repository, it just removes it from the team.
#' 
#' 
#'
#' @param teamId Id of team.
#' @param owner Name of a repository owner.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_delete_repos_by_repo <- function(teamId, owner, repo, ...){
  endpoint = 'DELETE /teams/:teamId/repos/:owner/:repo'
  gh::gh(endpoint = endpoint, teamId = teamId, owner = owner, repo = repo, ...)           
}

#' Check if a team manages a repository
#' 
#' 
#'
#' @param teamId Id of team.
#' @param owner Name of a repository owner.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_get_repos_by_repo <- function(teamId, owner, repo, ...){
  endpoint = 'GET /teams/:teamId/repos/:owner/:repo'
  gh::gh(endpoint = endpoint, teamId = teamId, owner = owner, repo = repo, ...)           
}

#' In order to add a repository to a team, the authenticated user must be an owner of the org that the team is associated with. Also, the repository must be owned by the organization, or a direct fork of a repository owned by the organization.
#' 
#' 
#'
#' @param teamId Id of team.
#' @param owner Name of a organization.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_teams_put_repos_by_repo <- function(teamId, owner, repo, ...){
  endpoint = 'PUT /teams/:teamId/repos/:owner/:repo'
  gh::gh(endpoint = endpoint, teamId = teamId, owner = owner, repo = repo, ...)           
}

#' Get the authenticated user.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get <- function(...){
  endpoint = 'GET /user'
  gh::gh(endpoint = endpoint, ...)           
}

#' Update the authenticated user.
#' 
#' 
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_patch <- function(body, ...){
  endpoint = 'PATCH /user'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' Delete email address(es).
#' 
#' You can include a single email address or an array of addresses.
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_delete_emails <- function(body, ...){
  endpoint = 'DELETE /user/emails'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' List email addresses for a user.
#' 
#' In the final version of the API, this method will return an array of hashes
#' with extended information for each email address indicating if the address has
#' been verified and if it's primary email address for GitHub. Until API v3 is
#' finalized, use the application/vnd.github.v3 media type to get other response
#' format.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_emails <- function(...){
  endpoint = 'GET /user/emails'
  gh::gh(endpoint = endpoint, ...)           
}

#' Add email address(es).
#' 
#' You can post a single email address or an array of addresses.
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_post_emails <- function(body, ...){
  endpoint = 'POST /user/emails'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' List the authenticated user's followers
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_followers <- function(...){
  endpoint = 'GET /user/followers'
  gh::gh(endpoint = endpoint, ...)           
}

#' List who the authenticated user is following.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_following <- function(...){
  endpoint = 'GET /user/following'
  gh::gh(endpoint = endpoint, ...)           
}

#' Unfollow a user.
#' 
#' Unfollowing a user requires the user to be logged in and authenticated with
#' basic auth or OAuth with the user:follow scope.
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_delete_following_by_username <- function(username, ...){
  endpoint = 'DELETE /user/following/:username'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' Check if you are following a user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_following_by_username <- function(username, ...){
  endpoint = 'GET /user/following/:username'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' Follow a user.
#' 
#' Following a user requires the user to be logged in and authenticated with basic
#' auth or OAuth with the user:follow scope.
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_put_following_by_username <- function(username, ...){
  endpoint = 'PUT /user/following/:username'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List issues.
#' 
#' List all issues across owned and member repositories for the authenticated
#' user.
#'
#' @param filter Issues assigned to you / created by you / mentioning you / you're
#' subscribed to updates for / All issues the authenticated user can see
#' @param state state
#' @param labels String list of comma separated Label names. Example - bug,ui,@@high.
#' @param sort sort
#' @param direction direction
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_issues <- function(filter, state, labels, sort, direction, ...){
  endpoint = 'GET /user/issues'
  gh::gh(endpoint = endpoint, filter = filter, state = state, labels = labels, sort = sort, direction = direction, ...)           
}

#' List your public keys.
#' 
#' Lists the current user's keys. Management of public keys via the API requires
#' that you are authenticated through basic auth, or OAuth with the 'user',
#' 'write:public_key' scopes.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_keys <- function(...){
  endpoint = 'GET /user/keys'
  gh::gh(endpoint = endpoint, ...)           
}

#' Create a public key.
#' 
#' 
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_post_keys <- function(body, ...){
  endpoint = 'POST /user/keys'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' Delete a public key. Removes a public key. Requires that you are authenticated via Basic Auth or via OAuth with at least admin:public_key scope.
#' 
#' 
#'
#' @param keyId ID of key.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_delete_keys_by_key_id <- function(keyId, ...){
  endpoint = 'DELETE /user/keys/:keyId'
  gh::gh(endpoint = endpoint, keyId = keyId, ...)           
}

#' Get a single public key.
#' 
#' 
#'
#' @param keyId ID of key.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_keys_by_key_id <- function(keyId, ...){
  endpoint = 'GET /user/keys/:keyId'
  gh::gh(endpoint = endpoint, keyId = keyId, ...)           
}

#' List public and private organizations for the authenticated user.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_orgs <- function(...){
  endpoint = 'GET /user/orgs'
  gh::gh(endpoint = endpoint, ...)           
}

#' List repositories for the authenticated user. Note that this does not include
#' 
#' repositories owned by organizations which the user can access. You can lis user
#' organizations and list organization repositories separately.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_repos <- function(...){
  endpoint = 'GET /user/repos'
  gh::gh(endpoint = endpoint, ...)           
}

#' Create a new repository for the authenticated user. OAuth users must supply
#' 
#' repo scope.
#'
#' @param body body
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_post_repos <- function(body, ...){
  endpoint = 'POST /user/repos'
  gh::gh(endpoint = endpoint, body = body, ...)           
}

#' List repositories being starred by the authenticated user.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_starred <- function(...){
  endpoint = 'GET /user/starred'
  gh::gh(endpoint = endpoint, ...)           
}

#' Unstar a repository
#' 
#' 
#'
#' @param owner Name of a repository owner.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_delete_starred_by_repo <- function(owner, repo, ...){
  endpoint = 'DELETE /user/starred/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Check if you are starring a repository.
#' 
#' 
#'
#' @param owner Name of a repository owner.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_starred_by_repo <- function(owner, repo, ...){
  endpoint = 'GET /user/starred/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Star a repository.
#' 
#' 
#'
#' @param owner Name of a repository owner.
#' @param repo Name of a repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_put_starred_by_repo <- function(owner, repo, ...){
  endpoint = 'PUT /user/starred/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List repositories being watched by the authenticated user.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_subscriptions <- function(...){
  endpoint = 'GET /user/subscriptions'
  gh::gh(endpoint = endpoint, ...)           
}

#' Stop watching a repository
#' 
#' 
#'
#' @param owner Name of the owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_delete_subscriptions_by_repo <- function(owner, repo, ...){
  endpoint = 'DELETE /user/subscriptions/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Check if you are watching a repository.
#' 
#' 
#'
#' @param owner Name of the owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_subscriptions_by_repo <- function(owner, repo, ...){
  endpoint = 'GET /user/subscriptions/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' Watch a repository.
#' 
#' 
#'
#' @param owner Name of the owner.
#' @param repo Name of repository.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_put_subscriptions_by_repo <- function(owner, repo, ...){
  endpoint = 'PUT /user/subscriptions/:owner/:repo'
  gh::gh(endpoint = endpoint, owner = owner, repo = repo, ...)           
}

#' List all of the teams across all of the organizations to which the authenticated user belongs. This method requires user or repo scope when authenticating via OAuth.
#' 
#' 
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_user_get_teams <- function(...){
  endpoint = 'GET /user/teams'
  gh::gh(endpoint = endpoint, ...)           
}

#' Get all users.
#' 
#' This provides a dump of every user, in the order that they signed up for
#' GitHub. Note: Pagination is powered exclusively by the since parameter. Use the
#' Link header to get the URL for the next page of users.
#'
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get <- function(...){
  endpoint = 'GET /users'
  gh::gh(endpoint = endpoint, ...)           
}

#' Get a single user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_by_username <- function(username, ...){
  endpoint = 'GET /users/:username'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_events <- function(username, ...){
  endpoint = 'GET /users/:username/events'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' This is the user's organization dashboard. You must be authenticated as the user to view this.
#' 
#' 
#'
#' @param username Name of user.
#' @param org org
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_events_orgs_by_org <- function(username, org, ...){
  endpoint = 'GET /users/:username/events/orgs/:org'
  gh::gh(endpoint = endpoint, username = username, org = org, ...)           
}

#' List a user's followers
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_followers <- function(username, ...){
  endpoint = 'GET /users/:username/followers'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' Check if one user follows another.
#' 
#' 
#'
#' @param username Name of user.
#' @param targetUser Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_following_by_target_user <- function(username, targetUser, ...){
  endpoint = 'GET /users/:username/following/:targetUser'
  gh::gh(endpoint = endpoint, username = username, targetUser = targetUser, ...)           
}

#' List a users gists.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_gists <- function(username, ...){
  endpoint = 'GET /users/:username/gists'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List public keys for a user.
#' 
#' Lists the verified public keys for a user. This is accessible by anyone.
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_keys <- function(username, ...){
  endpoint = 'GET /users/:username/keys'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List all public organizations for a user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_orgs <- function(username, ...){
  endpoint = 'GET /users/:username/orgs'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' These are events that you'll only see public events.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_received_events <- function(username, ...){
  endpoint = 'GET /users/:username/received_events'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List public events that a user has received
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_received_events_public <- function(username, ...){
  endpoint = 'GET /users/:username/received_events/public'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List public repositories for the specified user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_repos <- function(username, ...){
  endpoint = 'GET /users/:username/repos'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List repositories being starred by a user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_starred <- function(username, ...){
  endpoint = 'GET /users/:username/starred'
  gh::gh(endpoint = endpoint, username = username, ...)           
}

#' List repositories being watched by a user.
#' 
#' 
#'
#' @param username Name of user.
#' @param ... Additional parameters to pass to \code{\link[gh]{gh}}. See details. 
#' @details
#' Additional parameters that can be passed:
#' \describe{
#' \item{type}{ It takes values in: all, public, private, forks, sources, member.
#' The default is: all}
#' \item{Accept}{Is used to set specified media type.  }
#' }

#' @export
gh_users_get_subscriptions <- function(username, ...){
  endpoint = 'GET /users/:username/subscriptions'
  gh::gh(endpoint = endpoint, username = username, ...)           
}