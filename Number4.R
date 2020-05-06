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