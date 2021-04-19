#' Get the path to the default PLINK folder as used by regenier
#' @return path to the default PLINK folder as used by regenier
#' @export
get_plink_folder <- function() {
  rappdirs::user_data_dir(appname = "regenier")
}
