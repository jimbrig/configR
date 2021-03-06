% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_dev_packages.R
\name{inst_pak}
\alias{inst_pak}
\title{Install \code{pak}}
\usage{
inst_pak()
}
\value{
Invisible \code{NULL}
}
\description{
Installs the \code{pak} R package by \code{r-lib} from their official binary GitHub build.
}
\details{
Note this installs the development version of \code{r-lib/pak} using the following
code:

\if{html}{\out{<div class="sourceCode R">}}\preformatted{repo <- sprintf(
  "https://r-lib.github.io/p/pak/stable/\%s/\%s/\%s",
  .Platform$pkgType,
  R.Version()$os,
  R.Version()$arch
)

install.packages("pak", repos = repo)
}\if{html}{\out{</div>}}
}
\examples{
\dontrun{
inst_pak()
}
}
\seealso{
\itemize{
\item \code{\link[utils:install.packages]{utils::install.packages()}}
\item \code{\link[pak:pak]{pak::pak()}}
\item \href{https://github.com/r-lib/pak}{r-lib/pak}
}
}
