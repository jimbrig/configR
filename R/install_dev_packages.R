#' Install `pak`
#'
#' @description
#' Installs the `pak` R package by `r-lib` from their official binary GitHub build.
#'
#' @return Invisible `NULL`
#' @export
#'
#' @details
#' Note this installs the development version of `r-lib/pak` using the following
#' code:
#'
#' ```R
#' repo <- sprintf(
#'   "https://r-lib.github.io/p/pak/stable/%s/%s/%s",
#'   .Platform$pkgType,
#'   R.Version()$os,
#'   R.Version()$arch
#' )
#'
#' install.packages("pak", repos = repo)
#' ```
#'
#' @seealso
#' - [utils::install.packages()]
#' - [pak::pak()]
#' - [r-lib/pak](https://github.com/r-lib/pak)
#'
#' @importFrom utils install.packages
#'
#' @examples
#' \dontrun{
#' inst_pak()
#' }
inst_pak <- function() {

  repo <- sprintf(
    "https://r-lib.github.io/p/pak/stable/%s/%s/%s",
    .Platform$pkgType,
    R.Version()$os,
    R.Version()$arch
  )

  utils::install.packages("pak", repos = repo)

}



