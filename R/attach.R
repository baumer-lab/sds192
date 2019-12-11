
# Is this basically what this function is supposed to look like?
# Groups will be assigned later, so these are blank for now.

.onAttach <- function(libname, pkgname) {
  
  fertile_group <- c("bbaumer")
    
  control_group <- c()
    
  non_participants <- c() 
  
  username <- Sys.getenv("LOGNAME")

  if (username %in% fertile_group) {
    
    if (!"fertile" %in% rownames(utils::installed.packages())) {
      suppressMessages(
        remotes::install_github("baumer-lab/fertile", dependencies = TRUE)
      )
    }
    suppressMessages(library(fertile))
  }
}
  
  