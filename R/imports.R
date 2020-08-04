#' Compute word counts
#' @export
#' @seealso \code{\link[wordcountaddin]{text_stats}}
text_stats <- function() {
  if (!requireNamespace("wordcountaddin")) {
    suppressMessages(
      remotes::install_github("benmarwick/wordcountaddin", dependencies = TRUE)
    )
  }
  if (requireNamespace("wordcountaddin")) {
    if (is_experimental()) {
      gsub("koRpus", "Korpus", wordcountaddin::text_stats())
    } else {
      wordcountaddin::text_stats()
    }
  } else {
    warning("Unable to load wordcountaddin")
  }
}
