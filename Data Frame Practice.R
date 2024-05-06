#Basic data frame practice commands
#Run these commands from console

#Load diamonds data frame
data("diamonds")

#View the data drame - opens a tab to see the entire data frame Can also click to the right in enviroment to view.
view(diamonds)

#Preview the data frame
head(diamonds)

#str - Structure - High level veiw of data structure details
str(diamonds)

#colnames - View the column names
colnames(diamonds)

#mutate - Add a column
mutate(diamonds, carat_2=carat*100)