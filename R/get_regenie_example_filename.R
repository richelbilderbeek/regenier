#' Get the path to a REGENIE example file
#' @inheritParams default_params_doc
#' @param example_filename name of the example file
#' @return the path to a REGENIE example file, if it exists.
#'   Will \link{stop} if the file does not exist
#' @export
#' @examples
#' if (is_regenie_installed()) {
#'   get_regenie_example_filename("test.map")
#'   get_regenie_example_filename("test.ped")
#' }
get_regenie_example_filename <- function(
  example_filename,
  regenie_folder = get_regenie_folder()
) {
  check_regenie_is_installed(regenie_folder = regenie_folder)
  full_path <- file.path(
    dirname(get_regenie_exe_path(regenie_folder = regenie_folder)),
    example_filename
  )
  if (!file.exists(full_path)) {
    stop(
      "Example file '", example_filename, "' not found. ",
      "Full path: ", full_path
    )
  }
  full_path
}
