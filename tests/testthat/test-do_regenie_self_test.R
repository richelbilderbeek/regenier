test_that("use", {
  if (!is_regenie_installed()) return()
  expect_silent(do_regenie_self_test())
})
