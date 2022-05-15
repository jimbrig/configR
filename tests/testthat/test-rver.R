test_that("rver works for all formats", {

  t_full <- paste0(R.Version()$major, ".", R.Version()$minor)
  t_text <- R.Version()$version.string
  t_lib <- paste0(R.Version()$major, ".", substr(R.Version()$minor, start = 1, stop = 1))
  t_maj <- R.Version()$major
  t_min <- R.Version()$minor
  t_nick <- R.Version()$nickname

  expect_equal(rver(), t_full)
  expect_equal(rver("text"), t_text)
  expect_equal(rver("lib"), t_lib)
  expect_equal(rver("major"), t_maj)
  expect_equal(rver("minor"), t_min)
  expect_equal(rver("nickname"), t_nick)

})
