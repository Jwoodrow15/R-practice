#ggplot and dplyr for filter. And palmerpenguins
install.packages("dplyr")
library(dplyr)
library(ggplot2)
library(palmerpenguins)

#review penguins dataset
head(penguins)

#filter with ggplot to Adelie species only.
new1_penguins <- penguins - # add new variable new1_penguins

#using new1_penguins, pass it through pipe to filter Adelie species only, then plot it.
new1_penguins %>% 
  filter(species == "Adelie") %>%
  ggplot(aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth(method = "lm")
  