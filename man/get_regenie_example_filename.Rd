% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_regenie_example_filename.R
\name{get_regenie_example_filename}
\alias{get_regenie_example_filename}
\title{Get the path to a REGENIE example file}
\usage{
get_regenie_example_filename(
  example_filename,
  regenie_folder = get_regenie_folder()
)
}
\arguments{
\item{example_filename}{name of the example file}

\item{regenie_folder}{folder where REGENIE is installed}
}
\value{
the path to a REGENIE example file, if it exists.
Will \link{stop} if the file does not exist
}
\description{
Get the path to a REGENIE example file
}
\examples{
if (is_regenie_installed()) {
  get_regenie_example_filename("test.map")
  get_regenie_example_filename("test.ped")
}
}
