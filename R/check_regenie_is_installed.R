#' Check if REGENIE is installed
#'
#' Check if REGENIE is installed. Will \link{stop} if not
#' @inheritParams default_params_doc
#' @return Nothing. Will \link{stop} if REGENIE is not installed.
#' @export
check_regenie_is_installed <- function(
  regenie_folder = get_regenie_folder()
) {
  regenie_zip_path <- file.path(regenie_folder, "regenie.zip")
  if (!file.exists(regenie_zip_path)) {
    stop(
      "REGENIE is not installed. \n",
      "ZIP file not downloaded. \n",
      "REGENIE folder: ", regenie_folder, " \n",
      "REGENIE zip path: ", regenie_zip_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }

  regenie_exe_path <- file.path(regenie_folder, "regenie-1.07-x86_64", "regenie")
  if (!file.exists(regenie_exe_path)) {
    stop(
      "REGENIE is not installed. \n",
      "Executable is not found \n",
      "REGENIE folder: ", regenie_folder, " \n",
      "REGENIE executable: ", regenie_exe_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }
  if (!regenier::is_exe(regenie_exe_path)) {
    stop(
      "REGENIE is not installed. \n",
      "REGENIE binary is not executable \n",
      "REGENIE folder: ", regenie_folder, " \n",
      "REGENIE executable: ", regenie_exe_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }
}
