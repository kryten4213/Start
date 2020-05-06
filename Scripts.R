update.packages()
install.packages("tidyverse", dependencies =TRUE)
install.packages("tibble")
library(tidyverse)
library(dplyr)
library(tidyr)
library(ggplot2)
library(tibble)
library(readr)
library(purrr)
library(stringr)
library(forcats)
version
snake <- read.csv("BlackButler.csv")
levi <- read.csv("ObeyMe.csv")
demons <- bind_rows(snake, levi)
str(demons)
demons
write.csv(demons, file = "Demons.csv")
demons_tidy <- pivot_longer(demons, cols=c(Female,Male), names_to='Gender', values_to='CharacterCount')
demons_tidy <- arrange(demons_tidy, Gender)
demons_tidy

by_species <- demons_tidy %>% 
  group_by(Species) %>% 
  summarize(CharacterCount = sum(CharacterCount))
by_species

par_species <-demons %>%
  group_by(Species)%>%
  summarize(Male = sum(Male), Female=sum(Female))
par_speciesT <- par_species$Male + par_species$Female
par_speciesT


