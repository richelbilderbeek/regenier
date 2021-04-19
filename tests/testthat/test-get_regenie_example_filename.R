test_that("use", {
  if (!is_regenie_installed()) return()
  expect_true(file.exists(get_regenie_example_filename("test.map")))
  expect_true(file.exists(get_regenie_example_filename("test.ped")))
  expect_error(file.exists(get_regenie_example_filename("abs.ent")))
})
