# study consent
library(tidyverse)

students <- readr::read_csv("/tmp/SDS 192 Study Consent (J-Term 2020-21) (Responses) - Form Responses 1.csv") %>%
  janitor::clean_names() %>%
  rename(login = 5) %>%
  filter(do_you_consent_to_participate_in_this_study == "Yes") %>%
  mutate(
    user = str_remove(login, "^\\[1\\]"),
    user = str_trim(user),
    user = str_remove_all(user, '\\"'),
    hash = map_chr(user, digest::digest, algo = "md5"),
    seed = runif(n = nrow(.)),
  )

participants <- students %>%
  filter(user > "") %>%
  filter(user != "+") %>%
  filter(!grepl("I never", user)) %>%
  arrange(desc(seed)) %>%
  mutate(control = rep(c(TRUE, FALSE), length.out = nrow(.))) %>%
  select(control, hash)

# paste into .attach.R
participants %>%
  filter(control) %>%
  pull(hash)

participants %>%
  filter(!control) %>%
  pull(hash)

# readr::write_csv(students, "/tmp/students.csv")
