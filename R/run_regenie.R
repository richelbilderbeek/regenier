#' Run PLINK from arguments
#' @inheritParams default_params_doc
#' @param args arguments for the PLINK executable
#' @return the text that PLINK returns
#' @export
run_plink <- function(
  args,
  plink_folder = get_plink_folder()
) {
  regenier::check_plink_is_installed(plink_folder = plink_folder)
  plink_exe_path <- regenier::get_plink_exe_path(plink_folder = plink_folder)
  system2(
    command = normalizePath(plink_exe_path),
    args = args,
    stdout = TRUE
  )
}
