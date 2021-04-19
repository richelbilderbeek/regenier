test_that("use", {
  expect_equal(
    file.path(get_regenie_folder(), "regenie-1.07-x86_64", "regenie"),
    get_regenie_exe_path()
  )
})
