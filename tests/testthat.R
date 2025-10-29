# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/tests.html
# * https://testthat.r-lib.org/reference/test_package.html#special-files
library(rgeeLite)
library(rgee)
library(testthat)


if (Sys.getenv("GITHUB_ACTIONS") == "true") {
  fprintf("RETICULATE_PYTHON: %s\n", Sys.getenv("RETICULATE_PYTHON"))

  Sys.setenv(RETICULATE_PYTHON = Sys.which("python")) # Set Python interpreter
  reticulate::use_python(Sys.which("python")) # double confirm

  ee_auth_ci()
} else {
  ee_Init() # Initialize rgeeLite
}


test_check("rgeeLite")
