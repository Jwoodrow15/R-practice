#Organizing data in R

#packages - 
library(tidyverse)
library(palmerpenguins)

#arrange() - sorts by argument (default is ascending)
penguins %>% arrange(bill_length_mm)

#make arrange() sort by desc.
penguins %>% arrange(-bill_length_mm)

#create data frame from of sorted data.
penguins2 <- penguins %>% arrange(-bill_length_mm)

#group by island, drop_na() gets rid of NA values, summarize, create new bill lenth column containing the average for each.
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

#same but with max bill length
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
      
#2 group bys and 2 summarizations.                                                    
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm), mean_bill_length_mm = mean(bill_length_mm))

#filter results for only Adelie penguins
penguins %>% filter(species == "Adelie")
