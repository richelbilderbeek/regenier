#' Uninstall PLINK
#' @inheritParams default_params_doc
#' @return Nothing
#' @export
uninstall_regenie <- function(
  regenie_folder = get_regenie_folder()
) {
  testthat::expect_true(is_regenie_installed(regenie_folder = regenie_folder))
  unlink(regenie_folder, recursive = TRUE)
  testthat::expect_false(is_regenie_installed(regenie_folder = regenie_folder))
}
