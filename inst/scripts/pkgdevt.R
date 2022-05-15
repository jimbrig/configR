
#  ------------------------------------------------------------------------
#
# Title : configR R Package Development Script
#    By : Jimmy Briggs
#  Date : 2022-05-14
#
#  ------------------------------------------------------------------------

# require / library dev packages ------------------------------------------
c(
  "usethis",
  "devtools",
  "pkgbuild",
  "pkgload",
  "pkgdown",
  "testthat",
  "knitr",
  "rmarkdown",
  "chameleon",
  "attachment",
  "desc"
) |>
  sapply(require, character.only = TRUE)

library(devtools)
library(usethis)
library(pkgbuild)
library(pkgload)
library(pkgdown)
library(testthat)
library(knitr)
library(pak)
library(purrr)
library(desc)
library(chameleon)
library(attachment)
library(templateeR)

# initialize package ------------------------------------------------------

usethis::create_package("configR")
usethis::use_namespace()
usethis::use_roxygen_md()
usethis::use_git()
# usethis::use_tibble() # #' @return a [tibble][tibble::tibble-package]
# usethis::use_pipe()
# usethis::use_tidy_eval()
devtools::document()


# github ------------------------------------------------------------------

# set description and title first so included in GH repo
desc::desc_set(
  "Description" = "Setup and configure an optimal R development environment.",
  "Title" = "R Conviguration Package"
)

usethis::use_github(private = FALSE)

# github labels -----------------------------------------------------------
library(templateeR)
templateeR::use_gh_labels()


# package docs ------------------------------------------------------------

usethis::use_readme_rmd()
usethis::use_mit_license()
usethis::use_package_doc()
usethis::use_news_md()


# functions ---------------------------------------------------------------

c(
  # add function file names here:
  "utils",
  "zzz",
  "r_config_dir",
  "rver",
  "install_dev_packages"
) |> purrr::walk(usethis::use_r, open = FALSE)


# tests -------------------------------------------------------------------

c(
  # add function test file names here:
  "r_config_dir",
  "rver"
) |> purrr::walk(usethis::use_test)

# data --------------------------------------------------------------------

c(
  # add data prep script names here:

) |> purrr::walk(usethis::use_data_raw)

# vignettes ---------------------------------------------------------------

c(
  # add vignette names here:
  "configR"

) |> purrr::walk(usethis::use_vignette)



# meta --------------------------------------------------------------------

require(codemetar)
codemetar::write_codemeta()
codemetar::give_opinions('C:\Users\jimmy\Dev\jimbrig\configR')

# templates ---------------------------------------------------------------

c(
  ".config/R/config",
  ".config/R/templates",
  ".config/R/lib",
  ".config/R/cache",
  ".config/R/dev",
  ".config/R/profile",
  ".config/R/rstudio",
  ".config/R/radian",
  ".config/R/bin",
  ".config/R/profile/options"
) |>
  purrr::map_chr(~ fs::path("inst/templates/", .x)) |>
  purrr::walk(fs::dir_create)

c(
  ".Rprofile",
  ".Renviron",
  ".Rbuildignore",
  ".Rhistory",
  "config.yml",
  "README.md",
  "bin/init.R",
  "bin/rstudio.R",
  "bin/packages.R",
  "bin/vscode.R",
  "bin/accounts.R",
  "bin/installs.R",
  "bin/configure.R",
  "profile/profile_functions.R",
  "profile/profile_options.R",
  "profile/profile_secrets.R",
  "profile/profile_settings.R",
  "profile/profile_shortcuts.R"
) |>
  purrr::walk(~ fs::file_create(fs::path("inst/templates/.config/R", .x)))





