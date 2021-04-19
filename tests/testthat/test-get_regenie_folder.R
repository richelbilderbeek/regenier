test_that("use", {
  expect_equal(
    get_regenie_folder(),
    rappdirs::user_data_dir(appname = "regenier")
  )
})
