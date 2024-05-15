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

#Using graphics devices to print and save. Uses built in R code rather than ggsave.

#Example to use png()
png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()

#example using pdf()
pdf(file = "/Users/jonathanwoodrow/Desktop/example.pdf",    
    width = 4,     
    height = 4) 
plot(x = 1:10,     
     y = 1:10)
abline(v = 0)
text(x = 0, y = 1, labels = "Random text")
dev.off()