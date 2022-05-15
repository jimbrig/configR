#' rver
#'
#' @description
#' Helper function to return your system's installed R version in a variety of
#' commonly used formats.
#'
#' See the `format` parameter for available options.
#'
#' @param format Character string of one of the following: `full`, `text`,
#' `lib`, `major`, `minor`, `nickname`. See details for specifics.
#'
#' @details
#' The following formatted return values can be specified with the `format` argument:
#'
#' - `full`: returns the full `{major}.{minor}.{patch}` semantic version of R.
#' - `text`: returns the version string of R in the format "R version `{major}.{minor}.{patch} ({date} {crt})`".
#' - `lib`: returns `{major}.{minor}` R version string; useful for your `.libPaths()`.
#' - `major`: returns only the major R version.
#' - `minor`: returns only the minor R version.
#' - `nickname`: returns the R version's nickname (i.e. the value listed on startup).
#'
#' @return character string in specified format
#' @export
#'
#' @examples
#' # get full R version
#' rver()
#'
#' # get path the default library path
#' r_config_dir("lib", rver("lib"))
#'
#' # get full text string of R version details
#' rver("text")
rver <- function(format = c("full", "text", "lib", "major", "minor", "nickname")) {

  format <- match.arg(format)
  out <- switch(format,
                "full" = paste0(R.Version()$major, ".", R.Version()$minor),
                "text" = R.Version()$version.string,
                "lib" = paste0(R.Version()$major, ".", substr(R.Version()$minor, start = 1, stop = 1)),
                "major" = R.Version()$major,
                "minor" = R.Version()$minor,
                "nickname" = R.Version()$nickname)
  out
}
