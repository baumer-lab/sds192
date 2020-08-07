#' Standard Buttons
#' @export
#' @param x text of the standard
#' @param ... arguments passed to \code{\link{button}}
#' @examples 
#' standard_button("aesthetics")
#' standard_button("markdown")

standard_button <- function(x, ...) {
  type <- dplyr::case_when(
    tolower(x) %in% c("aesthetics", "context") ~ "primary",
    tolower(x) %in% c("wrangling", "relational", "reshape", "iteration", "function") ~ "success",
    tolower(x) %in% c("query") ~ "info",
    tolower(x) %in% c("spatial", "leaflet") ~ "warning",
    tolower(x) %in% c("markdown", "github") ~ "danger",
    tolower(x) %in% c("ethics") ~ "secondary",
    TRUE ~ "default"
  ) 
  button(toupper(x), button_type = type, ...)
}

#' Additional Bootstrap elements
#' @name bootstrap
#' @export
#' @inheritParams htmltools::p
#' @seealso \code{\link[htmltools]{tags}}, \code{\link[htmltools]{tag}}

li <- function(..., .noWS = NULL) {
  htmltools::tag("li", varArgs = list(...), .noWS = .noWS)
}

#' @rdname bootstrap
#' @export

ul <- function(..., .noWS = NULL) {
  htmltools::tag("ul", varArgs = list(...), .noWS = .noWS)
}

#' @rdname bootstrap
#' @export
#' @examples 
#' fa_icon("tv")

fa_icon <- function(..., .noWS = NULL) {
  icons <- unlist(list(...))
  class <- paste0("fas fa-", icons)
  htmltools::tag("i", varArgs = list(class = class), .noWS = .noWS)
}

#' @rdname bootstrap
#' @export
#' @inheritParams bsplus::bs_button
#' @examples
#' button("help!", button_type = "primary")

button <- function(..., button_type = "default", 
                   button_size = "small", .noWS = NULL) {
  class <- paste(
    c("btn", paste0("btn-", button_type), paste0("btn-", button_size)),
    collapse = " "
  )
  htmltools::tag("button", varArgs = list(class = class, ...), .noWS = .noWS)
}
