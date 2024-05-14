#smoothing line template
ggplot(data, aes(x=distance, y= dep_delay)) +
  geom_point() +
  geom_smooth()

#with smoothing line
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point() + 
  geom_smooth()

#method="loess" Loess smoothing with less than 1000 plots (generally)
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point() + 
  geom_smooth(method="loess")

#method="gam" Gam smoothing with more than 1000 plots (generally)
ggplot(data=penguins, aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point() + 
  geom_smooth(method="gam", formula = y ~s(x))
