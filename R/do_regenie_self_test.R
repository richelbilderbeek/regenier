#' Do a minimal PLINK self test
#' @inheritParams default_params_doc
#' @return nothing. Will stop with an error message if the self-test fails
#' @export
do_regenie_self_test <- function(
  regenie_folder = get_regenie_folder()
) {
  regenier::check_regenie_is_installed(regenie_folder = regenie_folder)
  # regenie --ped file1.ped --map file1.map --maf 0.05 --assoc
  regenier::run_regenie(
    regenie_folder = regenie_folder,
    args = c(
      "--noweb",
      "--ped", regenier::get_regenie_example_filename("test.ped"),
      "--map", regenier::get_regenie_example_filename("test.map"),
      "--maf", "0.05",
      "--assoc"
    )
  )
}
