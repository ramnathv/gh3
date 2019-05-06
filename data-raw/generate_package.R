#' Get unofficial swagger spec for Github API ----
url_api <- 'https://api.apis.guru/v2/specs/github.com/v3/swagger.yaml'
gh_api_spec <- yaml::read_yaml(url_api)

#' Utility functions ----
to_df <- function(p){
  p_names <- names(p)
  p_description <- p %>% map_chr('description')
  p_parameters <- p %>% 
    map(~ {
      .x$parameters %>% 
        map(~ {.x$enum <- NULL; as_tibble(.x)}) %>% 
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
#' @export
{fun} <- function({args}){{
  endpoint = '{endpoint}'
  gh::gh(endpoint = endpoint, {args_call})           
}}"

make_function_with_docs <- function(r){
  endpoint <- paste(toupper(r$verb), r$endpoint)
  if ('required' %in% colnames(r$parameters)){
    params <- r$parameters %>% 
      filter(required) %>% 
      mutate(description = ifelse(is.na(description), name, description)) %>% 
      mutate(doc = map2(name, description, paste)) %>% 
      mutate(doc = stringr::str_replace_all(doc, fixed("@"), "@@")) %>% 
      pull(doc) %>% 
      c("... Additional parameters to pass to gh::gh.") %>% 
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
    params <- "#' @param ... Additional parameters to pass to gh::gh."
    args <- "..."
    args_call <- "..."
  }
  title <- r$title
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
api_l %>% 
  map_chr(make_function_with_docs) %>% 
  paste(collapse = "\n\n") %>% 
  cat(file = 'R/gh3.R')

# Generate documentation
devtools::document()
