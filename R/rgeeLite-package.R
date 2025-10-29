#' @import crayon rgee
#' @import magrittr
#' @importFrom utils str
#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

.onLoad <- function(libname, pkgname) {
  if (getRversion() >= "2.15.1") {
    utils::globalVariables(
      c(".", ".SD", ".N")
    )
  }
}

#' @importFrom rgee ee
#' @export
rgee::ee
