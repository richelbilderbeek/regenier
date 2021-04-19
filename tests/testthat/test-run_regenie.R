test_that("use", {
  if (!is_regenie_installed()) return()
  expect_silent(run_regenie(args = "--help"))
  expect_warning(run_regenie(args = "--noweb"))
})
