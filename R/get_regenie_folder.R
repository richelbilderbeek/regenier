#' Get the path to the default REGENIE folder as used by regenier
#' @return path to the default REGENIE folder as used by regenier
#' @export
get_regenie_folder <- function() {
  rappdirs::user_data_dir(appname = "regenier")
}
