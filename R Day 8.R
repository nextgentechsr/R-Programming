# Welcome to the R Programming - Part 8 Session. 
# Agenda
# Plotting Graphs in Base R, without installing any packages. 
# plots - Boxplot, BarPlot, Histogram, Pie and Scatterplot. 
# We can use R package libraries such as ggplot2, Lattice, highcharter, sunburst 
# and many other packages. 


# create data frame in R.
Employee_ID=c(1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010) # vector1 named as Employee_ID
Name =c("John", "Mike","Sam","Vijay","Johnathon", "Michell","Samuel","Vinod","Sameer","Ajay") # vector2 named as Name
Dept =c("HR", "Admin","HR", "Admin","HR", "Admin","HR", "Admin","HR", "Admin") # vector3 named as Dept
Salary <- c(5000, 3500, 4000, 5500,5000, 3500, 4300, 5550, 6000, 4500) # vector4 named as Salary

df_Employee =data.frame(Employee_ID,Name,Dept,Salary)
df_Employee

# Bar PLot
x <- df_Employee$Salary
barplot(x)

#Bar Plot for Employee Salary. 
emp_name <- df_Employee$Name
emp_sal <- df_Employee$Salary
barplot(emp_sal,names.arg=emp_name,xlab="Employee Names",ylab="Employee Salary",col="green",
        main="Employee Salary",border="red")

#Box PLot: 
data <- mtcars[,c('mpg','cyl')]
print(head(data))

boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

#Histogram: 
Temperature <- airquality$Temp
hist(Temperature)

# histogram with added parameters
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="yellow",
     freq=FALSE
)


# PIE: 
x <- df_Employee$Salary
pie(x)

pie(x,labels=emp_name,xlab="Salary",
        ylab="emp_sal",main="Employee Salary")

# Scatterplot: 
mtcars
plot(mtcars$mpg,mtcars$hp, main="MTCARS - MPG and Horse Power")

