#' Standard Buttons
#' @export
#' @param x text of the standard
#' @param ... arguments passed to \code{\link[bsplus]{bs_button}}
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
    TRUE ~ "default"
  ) 
  bsplus::bs_button(
    toupper(x), 
    button_type = type, 
    button_size = "small",
    ...
  )
}
