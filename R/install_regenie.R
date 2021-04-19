#' Determine if REGENIE is installed
#' @inheritParams default_params_doc
#' @return Nothing
#' @export
install_regenie <- function(
  url = "http://zzz.bwh.harvard.edu/regenie/dist/regenie-1.07-x86_64.zip",
  regenie_folder = get_regenie_folder()
) {
  testthat::expect_false(is_regenie_installed(regenie_folder = regenie_folder))

  dir.create(
    path = regenie_folder,
    showWarnings = FALSE,
    recursive = TRUE
  )
  regenie_zip_path <- file.path(regenie_folder, "regenie.zip")
  if (!file.exists(regenie_zip_path)) {
    utils::download.file(
      url = url,
      destfile = regenie_zip_path,
      quiet = TRUE
    )
  }
  testthat::expect_true(file.exists(regenie_zip_path))
  regenie_exe_path <- get_regenie_exe_path(regenie_folder = regenie_folder)
  if (!file.exists(regenie_exe_path)) {
    utils::unzip(
      regenie_zip_path,
      exdir = regenie_folder
    )
  }
  testthat::expect_true(file.exists(regenie_exe_path))
  if (!regenier::is_exe(regenie_exe_path)) {
    Sys.chmod(regenie_exe_path, "777")
  }
  testthat::expect_true(regenier::is_exe(regenie_exe_path))
  testthat::expect_true(is_regenie_installed(regenie_folder = regenie_folder))
}
