#' Run REGENIE from arguments
#' @inheritParams default_params_doc
#' @param args arguments for the REGENIE executable
#' @return the text that REGENIE returns
#' @export
run_regenie <- function(
  args,
  regenie_folder = get_regenie_folder()
) {
  regenier::check_regenie_is_installed(regenie_folder = regenie_folder)
  regenie_exe_path <- regenier::get_regenie_exe_path(regenie_folder = regenie_folder)
  system2(
    command = normalizePath(regenie_exe_path),
    args = args,
    stdout = TRUE
  )
}
