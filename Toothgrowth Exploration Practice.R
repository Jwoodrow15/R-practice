#dataset 

data("ToothGrowth")
View(ToothGrowth)

#starting functions

filtered_tg <- filter(ToothGrowth, dose == .5)

arrange(filtered_tg, len)

#Same in nested function

arrange(filter(ToothGrowth, dose == .5), len)

#Same with pipes

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == .5) %>%
  arrange(len)

#now give the avg len grouped by VC

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == .5) %>%
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T), .group = "drop")