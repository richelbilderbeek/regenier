test_that("use", {
  if (is_regenie_installed()) {
    expect_silent(check_regenie_is_installed())
  }

  expect_error(
    check_regenie_is_installed(regenie_folder = tempfile()),
    "PLINK is not installed"
  )
})
