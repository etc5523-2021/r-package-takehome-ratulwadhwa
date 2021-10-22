test_that("direction", {
  expect_equal(stain_palette()(3), c("#FCF404", "#EC3C7C", "#057277"))
  expect_equal(stain_palette(direction = -1)(3), c("#057277", "#EC3C7C", "#FCF404"))
  expect_warning(stain_palette()(8), "n is larger than the number of colours in stain palette.")
})
