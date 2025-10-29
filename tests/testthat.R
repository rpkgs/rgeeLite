# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/tests.html
# * https://testthat.r-lib.org/reference/test_package.html#special-files

fprintf <- function(...) cat(sprintf(...))

if (Sys.getenv("GITHUB_ACTIONS") == "true") {
  fprintf("RETICULATE_PYTHON: %s\n", Sys.getenv("RETICULATE_PYTHON"))

  Sys.setenv(RETICULATE_PYTHON = Sys.which("python")) # Set Python interpreter
  reticulate::use_python(Sys.which("python")) # double confirm
} else {
  rgeeLite::ee_Init()
}


library(testthat)
library(rgeeLite)

test_check("rgeeLite")


test_that("print image works", {
  expect_equal(2 * 2, 4)

  img = ee$Image(1)
  print(img)
})
