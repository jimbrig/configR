#' r_config_dir
#'
#' @description
#' Helper function for retrieving and settings the user's custom `R_CONFIG_DIR`.
#'
#' @param ... Path elements passed as character strings to append to `R_CONFIG_DIR`
#'
#' @return normalized path to the `R_CONFIG_DIR`
#'
#' @details
#' This function appends path elements to your default `R_CONFIG_DIR`. To find
#' `R_CONFIG_DIR` it will first attempt to search for the `R_CONFIG_DIR` environment
#' variable, and if unset defaults to `~/.config/R` on all operating systems
#' (i.e. `%USERPROFILE%\.config\R` on Windows).
#'
#' @examples
#' library(configR)
#'
#' # retrieve path to .Rprofile (i.e. ~/.config/R/.Rprofile)
#' r_config_dir(".Rprofile")
#'
#' # retrieve path to your "profile" configuration directory
#' # (i.e. ~/.config/R/profile)
#' r_config_dir("profile")
r_config_dir <- function(...) {
  normalizePath(
    file.path(
      Sys.getenv("R_CONFIG_DIR", unset = normalizePath("~/.config/R")),
      ...
    )
  )
}
