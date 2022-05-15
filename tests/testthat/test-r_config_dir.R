test_that("r_config_dir works when environment variable is set", {
  test_config_dir <- normalizePath(
    withr::with_envvar(c("R_CONFIG_DIR" = "~/.config/R"), r_config_dir()),
    "/"
  )
  expect_equal(test_config_dir, as.character(fs::path_home(".config/R")))
})

test_that("r_config_dir works when no environment variable is set", {
  test_config_dir <- normalizePath(
    withr::with_envvar(c("R_CONFIG_DIR" = NULL), r_config_dir()),
    "/"
  )
  expect_equal(test_config_dir, as.character(fs::path_home(".config/R")))
})
