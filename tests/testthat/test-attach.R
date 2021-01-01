test_that("experiment works", {
  expect_true(sds192:::is_experimental("bbaumer"))
  expect_false(sds192:::is_experimental("ambertin"))
  expect_false(sds192:::is_experimental("blahblahblah"))
})


test_that("scidb works", {
  db <- dbConnect_scidb("airlines")
  expect_s4_class(db, "MySQLConnection")
  x <- suppressWarnings(
    dplyr::tbl(db, "airports")
  )
  expect_s3_class(x, c("tbl_MySQLConnection", "tbl_dbi", "tbl_sql", "tbl"))
})