#' Get the REGENIE executable's download URL
#' @export
get_regenie_exe_download_url <- function() {
  paste0(
    "https://github.com/rgcgithub/regenie/releases/download/",
    "v2.0.2/regenie_v2.0.2.gz_x86_64_Linux.zip"
  )
}

#' Get the REGENIE source code's download URL
#' @export
get_regenie_source_download_url <- function() {
  paste0(
    "https://github.com/rgcgithub/regenie/archive/refs/tags/v2.0.2.zip"
  )
}
