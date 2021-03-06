% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rver.R
\name{rver}
\alias{rver}
\title{rver}
\usage{
rver(format = c("full", "text", "lib", "major", "minor", "nickname"))
}
\arguments{
\item{format}{Character string of one of the following: \code{full}, \code{text},
\code{lib}, \code{major}, \code{minor}, \code{nickname}. See details for specifics.}
}
\value{
character string in specified format
}
\description{
Helper function to return your system's installed R version in a variety of
commonly used formats.

See the \code{format} parameter for available options.
}
\details{
The following formatted return values can be specified with the \code{format} argument:
\itemize{
\item \code{full}: returns the full \verb{\{major\}.\{minor\}.\{patch\}} semantic version of R.
\item \code{text}: returns the version string of R in the format "R version \verb{\{major\}.\{minor\}.\{patch\} (\{date\} \{crt\})}".
\item \code{lib}: returns \verb{\{major\}.\{minor\}} R version string; useful for your \code{.libPaths()}.
\item \code{major}: returns only the major R version.
\item \code{minor}: returns only the minor R version.
\item \code{nickname}: returns the R version's nickname (i.e. the value listed on startup).
}
}
\examples{
library(configR)

# get full R version
rver()

# get path the default library path
r_config_dir("lib", rver("lib"))

# get full text string of R version details
rver("text")
}
