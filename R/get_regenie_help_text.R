#' Get the text of the REGENIE help file
#' @inheritParams default_params_doc
#' @return the text of the REGENIE help file
#' @export
get_regenie_help_text <- function(
  regenie_folder = get_regenie_folder()
) {
  regenier::run_regenie(
    args = "--help",
    regenie_folder = regenie_folder
  )
}
