test_that("un- or install in temp regenie folder", {
  if (!is_on_ci()) return()

  temp_folder <- tempfile()
  expect_false(is_regenie_installed(regenie_folder = temp_folder))
  expect_silent(install_regenie(regenie_folder = temp_folder))
  expect_true(is_regenie_installed(regenie_folder = temp_folder))
  expect_silent(uninstall_regenie(regenie_folder = temp_folder))
  expect_false(is_regenie_installed(regenie_folder = temp_folder))
})

