# Standards

library(tidyverse)

standards <- tribble(
  ~standard, ~module_id,
  "aesthetics", "viz",
  "context", "viz",
  "ethics", "viz",
  "markdown", "viz",
  "wrangling", "wrangling",
  "relational", "wrangling",
  "reshape", "wrangling",
  "iteration", "scale",
  "function", "scale",
  "query", "query", 
  "spatial", "spatial", 
  "leaflet", "spatial",
  "github", "wrangling",
)

usethis::use_data(standards, overwrite = TRUE)
