test_that("experiment works", {
  expect_true(sds192:::is_experimental("bbaumer"))
  expect_false(sds192:::is_experimental("ambertin"))
  expect_false(sds192:::is_experimental("blahblahblah"))
})
