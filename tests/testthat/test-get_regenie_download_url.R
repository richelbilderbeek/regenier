test_that("use", {
  expect_equal(
    get_regenie_download_url(),
    "https://github.com/rgcgithub/regenie/archive/refs/tags/v2.0.2.zip" # nolint indeed a long name
  )
})
