#initial data manually inputted. 
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
print(employee)

#separate first and last names into new columns
separate(employee, name, into=c('First Name', 'Last Name'), sep=" ", remove=FALSE)



#Redo new employee data frame with first name and last name seperated out
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

#now combine the first and last using the unite()
unite(employee, name, 2:3, sep=" ", remove = FALSE)

#with penguins dataset, add a column for body mass in kg using mutate()
view(penguins)

new_penguins <- penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000)

#add another column with flipper length in m.
new_penguins <- penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)


