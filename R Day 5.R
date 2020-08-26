#Welcome to the R Programming - Part 5 Session. 
# Agenda
# IF, IF ELSE, NESTED IF ELSE Statement 
# LOOPS - FOR, WHILE, REPEAT
# STATEMENTS - BREAK and NEXT 


# IF Statement:
number <- 2                       #declaration
if(number > 0 ){                  #condition - logical or numberic
  print("Number is positive.")    #statement - action to print. 
} 

# IF ELSE statement: 
number <- -5
if(number > 0){
  print("Number is Positive.")
}else{
  print("Negative number.")
}


# Nested ESLE IF statement: 
number <- 0
if (number < 0) { 
  print("Negative number") 
} else if (number > 0) { 
  print("Positive number") 
} else 
  print("Zero")


# For Loop: 
for(i in 1:5){
  print(i)
}

colour <- c("violet","indigo","blue","green","yellow","orange","red")
for(i in colour){
  print(i)
}


# WHILE Loop: 
number <- 0
while(number < 5) {
  print(number)
  number <- number + 1
}

# Repeat Loops
number <- rep(0, 3)
number

name <- rep("John", 5)
name

# Break statement
number <- 1:10
for (value in number) {
  if (value == 5){
    break
  }
  print(value)
}

# Next: 
number <- 1:10
for (value in number) {
  if (value == 5){
    next
  }
  print(value)
}