#' Get unofficial swagger spec for Github API ----
# url_api <- 'https://api.apis.guru/v2/specs/github.com/v3/swagger.yaml'
# gh_api_spec <- yaml::read_yaml(url_api)
# yaml::write_yaml(gh_api_spec, 'data-raw/gh_api_spec.yml')

#' Utility functions ----
to_df <- function(p){
  p_names <- names(p)
  p_description <- p %>% map_chr('description')
  p_parameters <- p %>% 
    map(~ {
      .x$parameters %>% 
        map(~ {
          enum <- .x$enum
          .x$enum <- NULL 
          .x <- as_tibble(.x)
          if (!is.null(enum)) {
            .x$enum <- list(enum)
          }
          .x
        }) %>% 
        bind_rows()
    })
  tibble(
    verb = p_names,
    description = p_description,
    parameters = p_parameters
  )
}


# Create function with roxygen docs ----
doc_template <- "#' {title}
#' 
{description}
#'
{params} 
#' @details
{details}
#' @export
{fun} <- function({args}){{
  endpoint = '{endpoint}'
  gh::gh(endpoint = endpoint, {args_call})           
}}"

make_details <- function(p){
  if ('required' %in% names(p)){
    p %>% 
      filter(is.na(required) | !required) %>% 
      mutate(description = coalesce(description, '')) 
  } else {
    p %>% 
      mutate(description = coalesce(description, '')) 
  }
  
  if (!is.null(p2$enum)){
    p2 %>% 
      mutate(values = map2(enum, default, ~ {
        l <- if (!is.null(.x)){
          sprintf("It takes values in: %s.", paste(.x, collapse = ", "))
        } else {
          ""
        }
        m <- if (!is.na(.y)){
          sprintf("The default is: %s", .y)
        } else {
          ""
        }
        paste(c(l, m), collapse = " ")
      })) %>% 
      mutate(description = map2(
        description, values, paste, collapse = "."
      )) %>% 
      select(title = name, description = description) %>% 
      mutate(description = map2_chr(description, title, ~ {
        d <- sprintf('\\item{%s}{%s}', .y, .x)
        d %>% 
          paste(collapse = "\n") %>% 
          strwrap(width = 80) %>% 
          paste("#'", .) %>% 
          paste(collapse = "\n")
      })) %>% 
      pull(description) %>% 
      paste(collapse = "\n") %>% 
      sprintf("#' Additional parameters that can be passed:\n#' \\describe{\n%s\n#' }\n", .)
  } else {
    ""
  }
}

make_function_with_docs <- function(r){
  endpoint <- paste(toupper(r$verb), r$endpoint)
  additional_params <- "... Additional parameters to pass to \\code{\\link[gh]{gh}}. See details."
  if ('required' %in% colnames(r$parameters)){
    params <- r$parameters %>% 
      filter(required) %>% 
      mutate(description = ifelse(is.na(description), name, description)) %>% 
      mutate(doc = map2(name, description, paste)) %>% 
      mutate(doc = stringr::str_replace_all(doc, fixed("@"), "@@")) %>% 
      pull(doc) %>% 
      c(additional_params) %>% 
      map(strwrap, width = 80) %>% 
      map_chr(~ {
        f <- paste("#' @param", .x[1])
        l <- if (length(.x) > 1){
          paste("#'", .x[-1])
        } else {
          NULL
        }
        stringr::str_trim(paste(c(f, l), collapse = '\n'))
      }) %>% 
      paste(collapse = "\n")
    args <- r$parameters %>% 
      filter(required) %>% 
      pull(name)
    
    args_call <- paste(args, "=", args) %>% 
      c("...") %>% 
      paste(collapse = ", ")
    
    args <- c(args, "...") %>% 
      paste(collapse = ", ")
  } else {
    params <- paste("#' @param", additional_params)
    args <- "..."
    args_call <- "..."
  }
  title <- r$title
  details <- make_details(r$parameters)
  description <- if (is.na(r$long_description)){
     "#' " 
  } else {
    r$long_description %>% 
      strwrap(80) %>% 
      paste("#'", .) %>% 
      paste(collapse = "\n")
  }
    
  fun <- paste0('gh_', r$func)
  glue::glue(doc_template)
}

gh_api_spec <- yaml::read_yaml('data-raw/gh_api_spec.yml')

library(tidyverse)
# Transform API spec into a list that can be passed to make_function_docs
api <- gh_api_spec$paths %>% 
  map(to_df) %>% 
  bind_rows(.id = 'endpoint') %>% 
  mutate(func = map2_chr(endpoint, verb, ~ {
    parts <- strsplit(.x, '/')[[1]] 
    x <- parts %>% 
      discard(~ grepl("^\\{", .x) || .x == "")
    p_last <- tail(parts, 1)
    y <- if (grepl("^\\{", p_last)){
      paste0(
        'by_', 
        snakecase::to_snake_case(
          gsub("^\\{(.*)\\}$", "\\1", tail(parts, 1))
        )
      )
    } else {
      NULL
    }
    paste(c(x[1], .y, x[-1], y), collapse = '_')
  })) %>% 
  mutate(endpoint = stringr::str_replace_all(endpoint, "\\{", ":")) %>% 
  mutate(endpoint = stringr::str_replace_all(endpoint, "\\}", "")) %>% 
  separate(description, 
    into = c('title', 'long_description'), 
    sep = '\n', 
    extra = 'merge', remove = FALSE
  ) %>% 
  transpose()


# Generate functions and save it to the package
api %>% 
  map_chr(make_function_with_docs) %>% 
  paste(collapse = "\n\n") %>% 
  cat(file = 'R/gh3.R')

# Generate documentation
devtools::document()
