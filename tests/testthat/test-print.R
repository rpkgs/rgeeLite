test_that("print image works", {
  expect_no_error({
    img <- ee$Image(1)
    print(img)

    col <- ee$ImageCollection(img)
    print(col)
  })
})
