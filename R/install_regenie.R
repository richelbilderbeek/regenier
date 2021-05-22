#' Install REGENIE
#'
#' Install both the pre-built executable of REGENIE,
#' as well as its source code
#' @inheritParams default_params_doc
#' @return Nothing
#' @export
install_regenie <- function(
  source_url = get_regenie_source_download_url(),
  exe_url = get_regenie_exe_download_url(),
  regenie_folder = get_regenie_folder()
) {
  testthat::expect_false(is_regenie_installed(regenie_folder = regenie_folder))

  dir.create(
    path = regenie_folder,
    showWarnings = FALSE,
    recursive = TRUE
  )

  TODO: Need to download both the EXE and the source here.

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
