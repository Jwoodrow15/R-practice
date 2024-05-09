#Data Cleaning In R
install.packages("tidyverse")
library(tidyverse)
install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library("janitor")

#load csv
install.packages("palmerpenguins")
library("palmerpenguins")

#overview/summary of data
skim_without_charts(penguins)
glimpse(penguins)

#preview of columns
head(penguins)

#show just the species column, uses pipe and select.
penguins %>%
    select(species)

#Everything except species column, uses pipe, select, and (-).
penguins %>%
  select(-species)

#change the name of a column using rename
penguins %>%
  rename(island_new=island)

#change all column names (to make consistent if needed). rename_with(). example is to lower case. 
rename_with(penguins, tolower)

#clean_names() - ensures there is only characters, numbers, and underscores in names.
clean_names(penguins)
