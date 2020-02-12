
# Is this basically what this function is supposed to look like?
# Groups will be assigned later, so these are blank for now.

.onAttach <- function(libname, pkgname) {
  
  if (!"wordcountaddin" %in% rownames(utils::installed.packages())) {
    suppressMessages(
      remotes::install_github("benmarwick/wordcountaddin", dependencies = TRUE)
    )
  }
  
  fertile_group <- c(
    "a534f2dfa754d5638a09fec07c6d6964", "989299a7f94a18b5700561c69f47bf95", "266cc0e6d8585aeef6022823c88225b7", 
    "37a04ae46c70adb1ccb0a7e253a0a4db", "c7d348ed5c224054038566b39c17873f", "6eb37c469da9a6d364e541e4ccd6199e", 
    "d0c4a72e20574fd509b6a220c9801432", "8c4edacc5b7e8efae8325f1d1162af05", "2269e0153ca4601f48cfb61fe77499fc", 
    "2f8193acf52fe1da87a1f249c2fff26e", "99d13005770725249dc4b41fb590060a", "bcd74997fbce2da3b515eefc729668f0", 
    "8e76b368a5e999869c7ca8f9f1566cf8", "dbbd9894ec169e2ee253b942fd4befbd", "82b9db8d08e65a8b83532c5aed0fcff5", 
    "3deec07cf37f19d69acccd867b5c3767"
  )
  control_group <- c(
    "af6911d786bbd526945b1eeb7e657906", "4eebf471ba3cdea2b13593a0766191bc", "f2d598459dc2af17d407a2f9085540fe",
    "b18bc0732de971c4593cee7d6f90a257", "d04a16d271d2a06393a125d9b580d24b", "660b326b1945819cbde90d0f06b683d6",
    "901060eb30e273553612d64ee6d098fe", "59d8d8fec18074323ba9fa886349154c", "46f1b175a0f41e2e50027e3855bd2f21",
    "cfe88ba4ab452446790e7bce5a8f7218", "e6d559a4e569c30f5da095e715b0385b", "31a3d9c081172dcacd632d0e6d82dacb",
    "91bdca1084604b301cc11227d2d9721d", "23350f7edc849fcfe56d4967279bac79", "a736dce875a933eee4d4da2229c63e14",
    "23cf192efafb223c654e65c87fe7019a"
  )
    
  username <- Sys.getenv("LOGNAME")

  if (digest::digest(username, algo = "md5") %in% fertile_group) {
    
    # if you don't already have fertile, install it
    if (!"fertile" %in% rownames(utils::installed.packages())) {
      suppressMessages({
        remotes::install_github("hadley/requirements", dependencies = TRUE) 
        remotes::install_github("baumer-lab/fertile", dependencies = TRUE)
      })
    }
    
    # library(tidyverse)
    suppressMessages(library(fertile))
  }
}
  
  