##Loading Datasets
#running data() without arguement - returns all available datasets

data()

#load mtcars dataset

data(mtcars)

#view the loaded dataset

mtcars



#ReadR package - see all loaded datasets that come with readr

readr_example()

#read_csv() - read a csv file. Put file path in (). For this example, it is in the preloaded datasets.

read_csv(readr_example("mtcars.csv"))



#Importing Excel files - readxl - library(readxl) to load it.

library(readxl)

#readxl_example() - see a list of preloaded excel exmaple files.

readxl_example()

#importing excel files - read_excel(readxl_example("type-me.xlsx"))

read_excel(readxl_example("type-me.xlsx"))

#List names of individual sheets - excel_sheets()

excel_sheets(readxl_example("type-me.xlsx"))
