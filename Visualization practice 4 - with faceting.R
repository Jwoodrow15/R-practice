#load ggplot and palmerpenguins
library(ggplot2)
library(palmerpenguins)

#facet_wrap
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) +
  facet_wrap(~species)

#facet_wrap
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color, fill=cut)) +
  facet_wrap(~cut)

#facet_grid - use with 2 variables. split facets vertically by the 1st variable (sex) and horozontally by 2nd variable (species).
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  facet_grid(sex~species)

#facet_grid - remove sex from the vertical grid and just show species. This is the same as facet_wrap
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  facet_grid(~species)

