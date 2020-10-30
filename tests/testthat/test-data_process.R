context("Tests that operations on the data work.")

test_that("Gets remarks from objects that have them, none from ones that dont", {
  # has remarks
  x <- licor(system.file("extdata", "2020-06-23_ECT_hib",
                                    package = "licorer", mustWork = TRUE))
  expect_equal(class(get_remarks(x)), c("spec_tbl_df", "tbl_df", "tbl", "data.frame"))

  # no remarks present
  x <- licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
                                    package = "licorer", mustWork = TRUE))
  expect_equal(class(get_remarks(x)), "NULL")
})

test_that("Combine licor combines multiple licors", {
  licor1 <- licor(system.file("extdata", "2020-06-23_ECT_hib",
                              package = "licorer", mustWork = TRUE))
  licor2 <- licor(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
                              package = "licorer", mustWork = TRUE))
  multilicor <- combine_licor(list(licor1, licor2))

  expect_equal(class(multilicor), c("licor", "tbl_df", "tbl", "data.frame"))
  expect_equal(length(multilicor), 179)
})
