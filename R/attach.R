
# Is this basically what this function is supposed to look like?
# Groups will be assigned later, so these are blank for now.

.onAttach <- function(libname, pkgname) {

  if (is_experimental()) {
    # library(tidyverse)
    suppressMessages(library(fertile))
  }
}

is_experimental <- function(logname = whoami::username()) {
  
  fertile_group <- c(
#    digest::digest(whoami::username(), algo = "md5")
#    "bbaumer" 
    "8e76b368a5e999869c7ca8f9f1566cf8",
    "61dd805d5bc963f546fc88ca3290f1a8", "99bac30ff8c27b91b7262b12afd7f382", "d175e99a9a0e22fa8ba2f1013511a7eb", "3dde88b05d070ca8f1b7551e28a1bd98",
    "3e4820114d95ae8e3c0b2c4fceca74af", "8607f58758fc4d6e16cfb7ced9f85962", "464941fcb62272573651a378d7921448", "3d58a52a30a99e73a00d26e19fe3ec67",
    "d50bbcdddb977aa2f93ef2d26151b6ae", "14f042097567bb7b9f85d3a8e87e0814", "3bae07fd2bea3a42a70eb2fdbcfca2f6", "a723f6d1ea9f77326b47ee4b111d40fb",
    "ba743ea117b76f7ec554fe661de8741a", "9431ebaba914f701603419bd014fdcd2", "4170b8a02109d7799dc1d267db5ae82a", "665bdb2c93a0c4f1f03b57f1d638a71b",
    "b7637ee07f0b80fb2813a7b9ad1ca033", "c27f989065ad1f7ac26035cdb97b3bd5", "7486be4392ab63b879811d0ce3708bfa", "f7b0a9d5117b88cecec122f8ba0e52fb",
    "b53559d80fc3f202196f93bdb46fad4e", "b145e5b273dd6f57ad4ca6bea06a751d", "ff58ca18711554597335d1ec7c3dce9b", "27f73fe648662a617d527e049183cc61",
    "7bfc9b1180db84a4808f085076267565", "bf62032f9990b727a94f46d0cd644372", "352a832cb60c585b6824a7dbeed5bea0", "f7b0a9d5117b88cecec122f8ba0e52fb",
    "95381e25939097e87217d08f100172f0", "1ff3a573e6fda7a769a47b5e44036fd4", "7f8c1b45849f219880cd8cfcbb904b39", "eabcc650eccffc67f616afe0eee6f14a",
    "f7b0a9d5117b88cecec122f8ba0e52fb", "2d0ff9ac2e4a5859e527fa3b8a8f1a1e"
  )
  control_group <- c(
    "96eb0673c18b9fa79740686995b1d970", "c2a154e3fdcc1a8af48b5ce11a160081", "c3158391cfeb85f47af8bd55ba307a47", "602af357eb42089c63aa4568b697a992",
    "945396278298d2e5f99146337758888b", "d99a430f21460483ddbe49e3d9258d67", "6120e7f050e52f7f34861b9d8da02488", "980a97cbb16783a0c9b124da05717636",
    "3e125c32c8035ae26bb2e55901788d20", "0051e4f8c861f541a25049e770ef58a3", "01f35a17e580907885c2fcf37351b561", "f20f5c297059a57ff07a8e866e4c16a3",
    "ab12345aaaff5f02c455b1756b98d000", "372b7d19883b4eadbd6b29da5be58f81", "b72dc2cc81d9cf56c0ba2996b50824d2", "93f6302126c5f084bdbfedb193bea2eb",
    "1de8eccf4972a8da4545966163daf87c", "23cbe587f4c9d3431589128826314467", "a711fd894e6bc5ff5c5a938b84cbbe04", "fd092e652fcd8fd2d46714e85908b337",
    "65a2b8c5a3de0f21f01f57e4e8d19909", "2a465c685bb02b1e91daed785236f9b3", "be32112bbe2693915890da791537b288", "4ec8e2ba97f68c60f1c25f2718273a23",
    "48720ed2291443f4cbde2c3a73a696b1", "bbde821ddfac462716ef5afa5d678382", "9803c499b3bcfb724abad3d630693ab4", "e77a6e1a571afebb4a512bacd45e5318",
    "71a5d9592ce3b9c6663b37aeefb902ce", "65bc657110b4c17827e6217cc89c8a0a", "cb7aa7c0385bab79bfa5aa8793bac27a", "6348df828251973f6391bf99d44f9615",
    "692ad5efd2f42ac7e2473d02a7a76c47", "29537371dcbf80db26bfea942da2c9de"
  )
  
  digest::digest(logname, algo = "md5") %in% fertile_group
  
}