# Welcome to R Programming - Part 2 Session. 

# Create a vector. 
# c - function - This is a generic function which combines its arguments.
vector <- c("Ball","bat","man")
print(vector) 

# Get the class of the vector - type of the vector. 
print(class(vector))

my_vector <- c(1,3,2,5)
my_vector
print(class(my_vector))

#Example 1 - Creating a vector using : operator
range <- 1:5
range

range_1 <- 2:-2
range_1

#Example 2: Creating a vector using seq() function
# specify step size 
seq(1, 5, by=0.5) #increment by (default = 1) 

seq(1, 5, length.out=4) 	# specify length of the sequence 

#Using integer vector as index
a <- c(1,5,2,3,6) 
a

# access 4th element 
a[4] 

# access 3rd and 5th element
a[c(3, 5)] 

#Using character vector as index
a <- c("first"=3, "second"=0, "third"=9) 
names(a)

a["second"] 

a[c("first", "third")] 

#How to modify a vector in R?
a <- c(1,5,2,3,6) 
a

# modify 2nd element
a[2] <- 8	 	 
a

#Example: Add Two Vectors
vector1 <- c(2,4,6) 
vector2 <- c(1,3,5)

new_vector = vector1 + vector2
new_vector

#Add 1 to the new_vector
new_vector + 1

#Example: Sort a Vector, first we create a vector and then sort it
vector <- c(4,2,5,8,1,3,7,6) 
vector

# sort in ascending order 
sort(vector) 

# sort in descending order 
sort(vector, decreasing=TRUE) 

# vector x remains unaffected 
vector

#How to delete a Vector - Using NULL 
vector <- c(4,2,5,8,1,3,7,6) 
vector

vector <- NULL
vector

#------------------  LIST -----------------
# Create a list. 
emp <- c('John',30,'HR')
emp
class(emp)

emp_list <- list(emp)
is.list(emp_list)


# Print the list. 
print(emp_list)

#we can create a list with variety of object. 
list1 <- list(c(4,1,2),0.3,sin) 
# Print the list. 
print(list1)

#merging lists in R - create a 2 list 
list_1 <- list(2,4,6)
list_2 <- list("a","b","c")

#merge 2 lists 
merged.list <- c(list_1, list_2)
merged.list

#------------------  MATRIX  -----------------
#mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE)
#byrow=TRUE indicates that the matrix should be filled by rows. 
#byrow=FALSE indicates that the matrix should be filled by columns (the default).

mymatrix <- matrix(c(1,2,3,5,6,7,9,10,12), nrow=3, ncol=3, byrow=FALSE)
mymatrix

# Access the element at 3rd column and 1st row.
print(mymatrix[1,3])

# Access the element at 2nd column and 3rd row.
print(mymatrix [3,2])

# Access only the  2nd row.
print(mymatrix [2,])

# Access only the 3rd column.
print(mymatrix [,3])

#transpose of a Matrix - 
mymatrix
t(mymatrix) # t() - t function: 

matrix1 <- matrix(c(1, 3, 5, 7), nrow = 2)
matrix2 <- matrix(c(2, 4, 6, 8), nrow = 2)

# Add the matrices.
Mat.Add <- matrix1 + matrix2
Mat.Add

# Subtract the matrices
Mat.Sub <- matrix1 - matrix2
Mat.Sub

# Multiply the matrices.
Mat.Multi <- matrix1 * matrix2
Mat.Multi

# Divide the matrices
Mat.Div <- matrix1 / matrix2
Mat.Div


#------------------  ARRAY  -----------------
# Create an array - dimension - 3 * 3 - 3 rows, 3 columns 
array_1 <- array(c('ABC','XYZ'),dim = c(3,3)) 
print(array_1)

# 2*3 - 2 rows, 3 columns 
array_2 <- array(c('ABC','XYZ'),dim = c(2,3)) 
print(array_2)

#2 sets of an array
array_3 <- array(c('ABC','XYZ'),dim = c(3,3,2)) 
print(array_3)

#---------------  DATA FRAMES  ---------------------------

# create data frame in R.
Employee_ID=c(1001, 1002, 1003, 1004) # vector1 named as Employee_ID
Name =c("John", "Mike","Sam","Vijay") # vector2 named as Name
Dept =c("HR", "Admin","HR", "Admin") # vector2 named as Dept

df_Employee =data.frame(Employee_ID,Name,Dept)
df_Employee


#Rename the Coloumns name of Dataframe - Dept to Department: 
names(df_Employee) <- c("Employee_ID","Name","Department" )
df_Employee

#str - this function will display the structure of an object: 
str(df_Employee)

#Slice the Dataframe: 
# Select row 1 in column 2
df_Employee
df_Employee[1,2]

# Select Rows 1 to 2
df_Employee[1:2,]

## Select Columns 1
df_Employee[,1]

## Select Rows 1 to 3 and columns 3 to 4
df_Employee[1:3, 2:3]


# Slice with columns name
df_Employee[, c("Name","Department")]

#Add a coloumn to a Dataframe: 
# Create a new vector
Salary <- c(5000, 3500, 4000, 5500)

df_Employee$Salary <- Salary
df_Employee

#Select a particular Column of a Dataframe: 
df_Employee$Salary

#subset a Dataframe on basic conditions: 
#get the details of the employee where Salary > 4000
subset(df_Employee, subset = Salary > 4000)


#---------------  FACTOR  ---------------------------
data <- c("low","high","low","high","medium","low","medium","high","medium")
data

sugar_level  <- factor(data)
print(is.factor(sugar_level))

levels(sugar_level)
