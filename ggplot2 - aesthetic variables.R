#load initial library
library(ggplot2)
library(palmerpenguins)

#initial ggplot to start with
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#add another variable - color and map it to species.
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

#instead of color, change it to shapes.
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species))

#map both color and shape to species.
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species))

#also add in size mapped to species
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species,size=species))

#map alpha aesthetic to species (makes them more or less transparent)
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

#change all to purple
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple")



#another way to write the ggplot
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species)) + geom_point()
