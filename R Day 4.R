#Welcome to the R Programming - Part 4 Session. 
# Agenda
# MT CARS - Dataset Analysis
# Load CSV and EXCEL file in the R environment

#all built-in datasets in R. 
help(package = "datasets")

#R data sets - this will list the available datasets. 
data()

#link - https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html


#Motor Trend Car Road Tests
help(mtcars)

#dataset is attached to the R search Path
attach(mtcars)

#detach function reverses the process
detach()

#data() - loads a dataset: 
data(mtcars)
head(mtcars)
head(mtcars, 10)
tail(mtcars)
str(mtcars)
dim(mtcars)
names(mtcars)
colnames(mtcars)
summary(mtcars)
nrow(mtcars)

#Reading and Writting the CSV file: 

#first check the working directory 
getwd()
setwd("/Users/rupeshshivsharan/Documents/My Channel/R pogramming/data set")
getwd()

data <- read.csv("/Users/rupeshshivsharan/Documents/My Channel/R pogramming/data set/Salary.csv")
head(data)
tail(data)
colnames(data)
str(data)


#writting a data frame into a CSV file. 
class(mtcars)

write_data <- write.csv(mtcars, 'new_data.csv')

