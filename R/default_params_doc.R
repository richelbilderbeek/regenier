#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param regenie_folder folder where REGENIE is installed
#' @param url REGENIE download URL,
#' as can be obtained by \link{get_regenie_download_url}
#' @param verbose set to TRUE for more output
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  regenie_folder,
  url,
  verbose
) {
  # Nothing
}
