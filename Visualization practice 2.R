library("ggplot2")
library("palmerpenguins")

#Initial plot
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#Great template script for creating plots
ggplot(data=<DATA>)+<GEOM_FUNCTION>(mapping=aes(<AESTHETIC MAPPINGS))

#for questions...
?geom_point
