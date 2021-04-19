#' Get the version of REGENIE
#' @inheritParams default_params_doc
#' @return the version of REGENIE
#' @export
get_regenie_version <- function(
  regenie_folder = get_regenie_folder()
) {
  regenier::check_regenie_is_installed(regenie_folder = regenie_folder)
  text <- regenier::get_regenie_help_text()
  all_matches <- stringr::str_match(
    string = text,
    pattern = "v[:digit:]+\\.[:digit:]+"
  )
  testthat::expect_equal(1, ncol(all_matches))

  version <- all_matches[!is.na(all_matches)]
  testthat::expect_equal(1, length(version))
  version
}
