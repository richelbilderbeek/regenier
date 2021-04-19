#' Determine if PLINK is installed
#' @inheritParams default_params_doc
#' @return TRUE if PLINK is installed, FALSE otherwise
#' @export
is_regenie_installed <- function(
  regenie_folder = get_regenie_folder()
) {
  is_installed <- FALSE
  tryCatch({
    regenier::check_regenie_is_installed(regenie_folder = regenie_folder)
    is_installed <- TRUE
  }, error = function(e) {} # nolint indeed ignore error message
  )
  is_installed
}
