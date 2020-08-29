#Welcome to the R Programming - Part 6 Session. 
# Agenda
# Strings Functions in R. 

a <- "Welcome to my Channel"
a
class(a)

#empty string
empty_string <- ""
empty_string
class(empty_string)

new_str <- c("Hello", "there")
length(new_str)
class(new_str)

#test the type of object
is.character(new_str)

#create a character object
str_1 <- "hello world"
str_2 <- 2 * 4

class(str_1)
class(str_2)

str_2 <- as.character(str_2)

class(str_2)
is.character(str_2)

#number of character in the elements of a vector: 
new_string <- c("good","morning","how","are","you")
nchar(new_string)

#paste
a <- paste("good","morning","how","are","you")
a

#seperator
b <- paste("good","morning","how","are","you",sep = "_")
b

b <- paste("good","morning","how","are","you",sep = "*")
b

#collapse: 
c <- paste(c("good","morning","how","are","you"),collapse = "and")
c

c <- paste(c("good","morning","how","are","you"),collapse = " and ")
c

#seperator and collapse - both: 
d <- paste(c("good","morning","how","are","you"),1:10,sep = '_',collapse = " and ")
d


#paste0() 
paste0('A',1:5)

paste0('A',1:5,collapse=",")

#concatenate: 
str_1
cat(str_1, "good morning")

#String Manipulations: 
my_str <- "Hello guys HOW are YOU"

tolower(my_str)
toupper(my_str)

#character replace: chartr(old, new, x)
chartr("n","N", "nitin")


#Substring 
#substr(x, start, stop)
# replace 2nd letter with hash symbol
x = c("good","morning","how","are","you")
substr(x, 2, 2) <- "#"
x


#grep: 
x = c("good","morning","how","are","you")
grep("o",x)

#grepl
x = c("good","morning","how","are","you")
grepl("o",x)

