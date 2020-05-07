install.packages("tidyverse")
library(tidyverse)
library(dplyr)
survey <- read.csv("surveys.csv")

shrubery <- read.csv("shrub-volume-data.csv")
names(shrubery)
str(shrubery)
select(shrubery,length)
select(shrubery, site, experiment)
filter(shrubery, height>5)
shrub_data_w_vols <- mutate(shrubery, volume=length*width*height)
shrub_data_w_vols

#2.1
survey_abr <- select(survey, year, month, day, species_id)
#2.2
survey_kg <- mutate(survey, weight_kg=weight/1000)
survey_kg
survey_kg <- select(survey_kg, year, species_id, na.omit(weight_kg))
survey_kg <- na.omit(survey_kg)
#2.3
filter(survey, species_id=='SH')
#2.4
survey_byID <- group_by(survey, species_id)
species_numIDs <- summarize(survey_byID, n())
species_numIDs
#2.5
survey_by_ID_year <- group_by(survey, species_id, year)
species_num_ID_year <- summarize(survey_by_ID_year, n())
species_num_ID_year
#2.6
survey_DO <- filter(survey, species_id=='DO')
survey_DO
survey_DO_year <- group_by(survey_DO, year)
survey_DO_weightByYear <- summarize(survey_DO_year, avg_weight=mean(weight, na.rm=TRUE))
survey_DO_weightByYear

#3.1
survey_mutant_kg <- mutate(survey, weight_kg=weight/1000) %>%
  select(year, species_id, weight_kg) %>%
  na.omit()
survey_mutant_kg
#3.2
survey_SH <- filter(survey, species_id=='SH') %>%
  select(year, month, day, species_id)
survey_SH
#3.3
survey_ID <- group_by(survey, species_id) %>%
  summarize(n())
survey_ID
#3.4
survey_ID_year <- group_by(survey, species_id, year) %>%
  summarize(n())
survey_ID_year
#3.5
survey_DO_pipes <- filter(survey, species_id=='DO') %>%
  group_by(year) %>%
  summarize(avg_weight=mean(weight, na.rm=TRUE))
survey_DO_pipes

#~~~~~~~~~~~~~~~~~~~~~~~~Lecture 5~~~~~~~~~~~~~~~~~~~~~~~~~~~
install.packages("nycflights13")
library(nycflights13)
#5.1 - In text file
#5.2 - In text file
#5.3


