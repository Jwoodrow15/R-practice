#geom_smooth - creates a smooth line instead of points.
ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#geom_smooth with geom_point - you can use both at the same time!
ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#add a third variable - species.
ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g, linetype=species))

#geom_jitter - makes points easier to find and helps with "over plotting"
ggplot(data=penguins) + geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#geom_bar
ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut))

#geom_bar with different aesthetics - alpha, color, fill
ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut, alpha=cut))

ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut, color=cut))

ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut, fill=cut))

#geom_bar - when you add a 2nd variable to geom_bar, it will make a stacked bar chart.
ggplot(data=diamonds) + geom_bar(mapping=aes(x=cut, fill=clarity))