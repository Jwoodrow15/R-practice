#labels (labs) are outside the grid. Annotations (annotate) are inside the grid.

# add tile to ggplot with labs.
ggplot(data=penguins)+
geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
labs(title="Palmer Penguins: Body Mass vs. Flipper Length")

# add subtile to ggplot with labs.
ggplot(data=penguins)+
geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species")

#add caption
ggplot(data=penguins)+
geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
caption="Data collected by Dr. Kristen Gorman")

#annotate
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest")

#add color to annotation
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color = "purple")

#add more font customization
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color = "purple", fontface="bold", size=4.5)

#change angle of text with angle
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color = "purple", fontface="bold", size=4.5, angle=25)

#code getting too long, go ahead and assign it to a variable to make code more simple.
p <- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color = species)) + 
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle="Sample of Three Penguin Species", 
       caption="Data collected by Dr. Kristen Gorman")

#call p and add the annotation to it.
p + annotate("text", x=220, y=3500, label="The Gentoos are the largest", color = "purple", fontface="bold", size=4.5, angle=25)
