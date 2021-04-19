test_that("use on text file", {
  temp_filename <- tempfile()
  writeLines(text = "temp", temp_filename)
  expect_false(is_exe(filename = temp_filename))
})

test_that("use on PLINK exe file", {
  if (!is_regenie_installed()) return()
  expect_true(is_exe(filename = get_regenie_exe_path()))
})
