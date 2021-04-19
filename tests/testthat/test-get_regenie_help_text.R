test_that("use", {
  if (!is_regenie_installed()) return()
  expect_silent(get_regenie_help_text())

  text <- get_regenie_help_text()
  expect_true(is.character(text))
  expect_true(length(text) > 50)
})
