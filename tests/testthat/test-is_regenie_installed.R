test_that("use", {
  expect_silent(is_regenie_installed())
})

test_that("not installed in absent folder", {
  expect_false(is_regenie_installed(regenie_folder = tempfile()))
})
