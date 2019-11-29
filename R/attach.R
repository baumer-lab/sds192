
# Is this basically what this function is supposed to look like?
# Groups will be assigned later, so these are blank for now.

#' @export
.onAttach <- function(libname, pkgname){
  
  fertile_group <- c()
    
  control_group <- c()
    
  non_participants <- c() 
  
  username <- Sys.getenv("LOGNAME")
  
  if (username %in% fertile_group){
    
    if ("fertile" %in% rownames(installed.packages()) == FALSE) {
      suppressMessages(install_github("baumer-lab/fertile"))
    }
    
    suppressMessages(library(fertile))
    help(package = "fertile")
  }
  
  
}
  
  