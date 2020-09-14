
# Is this basically what this function is supposed to look like?
# Groups will be assigned later, so these are blank for now.

.onAttach <- function(libname, pkgname) {

  if (is_experimental()) {
    # library(tidyverse)
    suppressMessages(library(fertile))
  }
}

is_experimental <- function(username = Sys.getenv("LOGNAME")) {
  
  fertile_group <- c(
    "f7b0a9d5117b88cecec122f8ba0e52fb", "4d0295a810fb8491f91f914771572485", "36211a1f19f82ae07aed990b671c9b20", "b5d2b72b4f36f3afdce32a8409dc6ea0",
    "d498227fd9e6a4c42494bbebc42f6aa8", "191922566ef6a9910682ad9836b6d018", "b1b8278d6b7eecd2c595ab6138de17e0", "4894c3d932fa6cfc9ec59214c41f12c7",
    "2f1e21316352049069f8e4351d6cb88d", "73f4a06a26ad5342e30e2e7fdf92dba2", "9ff232c0e56f04be4ba2037aec6471b2", "abb2b711c8d45ffac12006945e10ed31",
    "3a49dd3c6e591933a0909734a94ca37c", "db1b731709316be69dae1d56382e4243", "8e76b368a5e999869c7ca8f9f1566cf8"
  )
  control_group <- c(
    "9aa36583f54766205850428e8f1a4c89", "fdc61d4d4c93473be5f485eea55140b3", "f03020938b31818063c79d2422755183", "d0a981421d0e378e26186f99c618c748",
    "7ec57b1f2bca9ac1e702fb68427b781b", "8857ca4d5e1fe92ae70b1ba95c0b7b8b", "e5e30623e9d09d29ded851b7fb40cb51", "592572bb9fce168f37117fd0d6e0e5ee",
    "c40b1786558a15f8dd151da163ebd0b4", "67b8da3952e07ba3f2c5c715c4042220", "f5ca3188ff14cbf43b6d4cd5b225376e", "b3b222f42beaae6ca2b309b94b1340be",
    "2dbac7345a71a13c434af882853e86bd", "3c5df10c572b5627418c034f65f52dee", "0ff07a4f6faaf3df57b348dad7bd22c9"
  )
  
  digest::digest(username, algo = "md5") %in% fertile_group
}