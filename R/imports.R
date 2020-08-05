#' Compute word counts
#' @export
#' @seealso \code{\link[wordcountaddin]{text_stats}}
text_stats <- function() {
  if (is_experimental()) {
    # Easter egg so we can verify that it's working
    gsub("koRpus", "Korpus", wordcountaddin::text_stats())
  } else {
    wordcountaddin::text_stats()
  }
}
