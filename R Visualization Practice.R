#Install packages/Load libraries
install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)
data(penguins)
View(penguins)

##penguin visualization using ggplot and geom_point
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#same visualization but written a different way
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()

#some practice
ggplot(data = penguins, mapping = aes(x = island)) +  geom_bar(color = "blue")

