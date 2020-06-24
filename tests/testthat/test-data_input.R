context("Tests file reading and validation.")

test_that("read_li6800_raw creates a licor object", {
  #Test reading in with an internal file
  x <- read_li6800_raw(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
                                   package = "licorer", mustWork = TRUE))
  expect_equal(class(x), c("licor", "data.frame"))

  #Test reading in with a file path
  x <- read_li6800_raw("~/licorer/inst/extdata/2019-05-06-0740_trillium_ovatum")
  expect_equal(class(x), c("licor", "data.frame"))
})

test_that("licor object has units and a header attribute", {
  #This tests the validator, which determines that the object was created
  #with the correct components
  x <- read_li6800_raw(system.file("extdata", "2019-05-06-0740_trillium_ovatum",
                                   package = "licorer", mustWork = TRUE))
  expect_identical(validate_licor(x), x)
})
