test_that("use", {
  expect_equal(
    get_regenie_download_url(),
    "https://github.com/rgcgithub/regenie/releases/download/v2.0.2/regenie_v2.0.2.gz_x86_64_Linux.zip" # nolint indeed a long name
  )
})
