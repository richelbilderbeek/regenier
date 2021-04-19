#' Get the path to the default PLINK executable as used by regenier
#' @inheritParams default_params_doc
#' @return path to the default PLINK executable  as used by regenier
#' @export
get_regenie_exe_path <- function(
  regenie_folder = get_regenie_folder()
) {
  file.path(
    regenie_folder,
    "regenie-1.07-x86_64", "regenie"
  )
}
