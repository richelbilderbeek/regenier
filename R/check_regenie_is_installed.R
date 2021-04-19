#' Check if PLINK is installed
#'
#' Check if PLINK is installed. Will \link{stop} if not
#' @inheritParams default_params_doc
#' @return Nothing. Will \link{stop} if PLINK is not installed.
#' @export
check_regenie_is_installed <- function(
  regenie_folder = get_regenie_folder()
) {
  regenie_zip_path <- file.path(regenie_folder, "regenie.zip")
  if (!file.exists(regenie_zip_path)) {
    stop(
      "PLINK is not installed. \n",
      "ZIP file not downloaded. \n",
      "PLINK folder: ", regenie_folder, " \n",
      "PLINK zip path: ", regenie_zip_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }

  regenie_exe_path <- file.path(regenie_folder, "regenie-1.07-x86_64", "regenie")
  if (!file.exists(regenie_exe_path)) {
    stop(
      "PLINK is not installed. \n",
      "Executable is not found \n",
      "PLINK folder: ", regenie_folder, " \n",
      "PLINK executable: ", regenie_exe_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }
  if (!regenier::is_exe(regenie_exe_path)) {
    stop(
      "PLINK is not installed. \n",
      "PLINK binary is not executable \n",
      "PLINK folder: ", regenie_folder, " \n",
      "PLINK executable: ", regenie_exe_path, " \n",
      "Tip: run 'regenier::install_regenie()'"
    )
  }
}
