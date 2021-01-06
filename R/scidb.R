#' Connections to scidb
#' @description Connect to the \code{scidb} server at Smith College.
#' @param dbname the name of the database to which you want to connect
#' @param ... arguments passed to \code{\link[DBI]{dbConnect}}
#' @details This is a public, read-only account. Any abuse will be considered a 
#' hostile act. 
#' @export
#' @return A \code{\link[RMySQL]{MySQLConnection-class}} object
#' 
#' @seealso \code{\link[RMySQL]{MySQLConnection-class}}
#' @examples 
#' db_air <- dbConnect_scidb("airlines")
#' if (require(RMySQL)) {
#'   summary(db_air)
#'   dbListTables(db_air)
#'   if (require(dplyr)) {
#'     tbl(db_air, "airports")
#'   }
#'   dbDisconnect(db_air)
#' }

dbConnect_scidb <- function(dbname, ...) {
  DBI::dbConnect(
    RMySQL::MySQL(), 
    dbname = dbname, 
    host = "scidb.smith.edu", 
    user = "sds192", 
    password = "DSismfc@S", 
    ... = ...
  )
}

