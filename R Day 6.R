#Welcome to the R Programming - Part 6 Session. 
# Agenda
# FUNCTIONS
# BUILT IN FUNCTION - 
# lapply(), sapply(), tapply() and apply()


#abs - absolute value: 
value <- -4
print(abs(value))

#square root
value <- 4
print(sqrt(value))

#log
value <- 4
print(log(value))

#exponential
value <- 4
print(exp(value))

#tolower 
value <- "JoHn"
print(tolower(value))

#toupper
value <- "JoHn"
print(toupper(value))

#Sum
value <- c(10,8, 3, 4, 2)
print(sum(value))

#minimum
value <- c(10,8, 3, 4, 2)
print(min(value))

#maximum
value <- c(10,8, 3, 4, 2)
print(max(value))



#functions with 1 argument: 
sq <- function(n)   # sq - function name,   n - argument
{
  n^2               #function body 
}  

sq(4)

#function without an argument. 
sq_function <- function() { 
  for(i in 5:10) { 
    print(i^2) 
  } 
} 
sq_function()


#multi arguments function: 
mult <- function(x,y) {
  x*y
}
mult(2,4)


#apply()
data <- matrix(c(1:10, 11:20, 21:30), nrow = 10, ncol = 3)
data
apply(data, 1, sum)


# lapply()  
data <- mtcars
data
lapply(data, mean)

#sapply() 
data <- mtcars
data
sapply(data, mean)

#tapply() 
data <- mtcars
data
tapply(mtcars$mpg,mtcars$cyl,mean)

