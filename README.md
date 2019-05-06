
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gh3

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of gh3 is to provide easy acccess to the [Github API
V3](https://developer.github.com/v3/). The entire API is accessible via
R functions that autocomplete.

## Installation

You can install the development version of gh3 from
[github](http://github.com/ramnathv/gh3) with:

``` r
remotes::install_github('ramnathv/gh3')
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(gh3)
gh_users_get_repos('ramnathv')
```

## Implementation

The entire package including all functions and documentation are
automatically generated from an unofficial [swagger
specification](https://api.apis.guru/v2/specs/github.com/v3/swagger.yaml)
of the Github API. If you are curious, you can read the script
generating the package:
[data\_raw/generate\_package.R](data_raw/generate_package.R)

## Code of Conduct

Please note that the ‘gh3’ project is released with a [Contributor Code
of Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you
agree to abide by its terms.
