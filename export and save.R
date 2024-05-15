#load ggplot and palmerpenguins
library(ggplot2)
library(palmerpenguins)

#starting plot
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

#Export - use the export menu in the plots window on the right.

#ggsave - will save the last plot you made.
ggsave("Three Penguin Species.png")