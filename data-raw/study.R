# study consent
library(tidyverse)

students <- readr::read_csv("/tmp/SDS 192 Fall 2020 Study Consent (Responses) - Form Responses 1.csv") %>%
  janitor::clean_names() %>%
  rename(login = 5) %>%
  filter(do_you_consent_to_participate_in_this_study == "Yes") %>%
  mutate(
    user = str_trim(login),
    user = str_remove_all(user, '\\"'),
    user = str_remove(user, "^\\[1\\] ")
  )
