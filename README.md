
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bioSpec

<!-- badges: start -->
<!-- badges: end -->

The goal of bioSpec is to visualize biodiversity data in Poland on a
map.

## Installation

You can install the development version of bioSpec from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Ivy-Walobwa/bioSpec", dependencies = TRUE)
```

## Example usage

    if(!require(bioSpec)){
      remotes::install_github("Ivy-Walobwa/bioSpec", dependencies = TRUE)
    }
    library(bioSpec)

    run_app()

## Implemented Features

<input type="checkbox" checked> Dashboard - A dashboard with a map
displaying species occurence in ploland and a timeline plot of the
occurences</input> <input type="checkbox" checked> Search - A search
input that allows user to search by scientific or venercular name and
select species</input> <input type="checkbox" checked> Beautiful UI
skill - Used sass to add custom styles to dashboard</input>
<input type="checkbox" checked> JavaScript skill - Used JS to access
some DOM elements and add event listeners</input>
