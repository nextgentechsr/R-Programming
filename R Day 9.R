# Welcome to the R Programming - Part 9 Session.
# Agenda
# install package in R studio 
# Dplyr package and its built-in functions 

.libPaths()
library()

install.packages("dplyr")
library(dplyr)

data <- read.csv("/Users/rupeshshivsharan/Documents/My_Channel/R pogramming/data set/titanic-trimmed.csv")
data
str(data)
head(data)

# selecting random n rows: 
data_sample <- sample_n(data, 5)
data_sample

# selecting random 20% of rows 
data_perct <- sample_frac(data, 0.2)
data_perct

# select function 
# syntax - select(data, column_names)

t_data <- select(data, pclass, survived, age)
head(t_data)

# dropping some columns from the dataset
t_data <-select(data, -pid, -age, -embarked)
head(t_data)

# selecting the columns using range: 
head(data)
t_data <-select(data, pclass:age)
head(t_data)

# selecting columns - start with ""
head(data)
t_data <-select(data, starts_with("p"))
head(t_data)

# Some additional options to select columns based on a specific criteria include
# ends_with() = Select columns that end with a character string
# contains() = Select columns that contain a character string
# matches() = Select columns that match a regular expression
# one_of() = Select columns names that are from a group of names

# -----   F I L T E R --------------------
# syntax : filter(data , Condition)

# get all the survived data: 
t_data <- filter(data, survived == 1)
head(t_data)

# pclass = 1st and survived = 1
t_data <- filter(data, pclass == "1st" & survived == 1)
head(t_data)

# # pclass = 1st and survived = 1
t_data <- filter(data, pclass == "1st" & survived == 1 & age <= 5 )
head(t_data)

#filter the rows on condition
t_data <- filter(data, embarked %in% c("Southampton", "Queenstown"))
t_data <- sample_n(t_data, 10, replace = TRUE)
t_data


# pipe operator: %>% 
t_data %>% 
  select(pclass,age) %>% 
  head

# without pipe: 
t_data <- select(data, pclass, survived, age)
head(t_data) 

#Example of pipe for nexted operations: 
mtcars %>%
  filter(carb > 1) %>%
  group_by(cyl) %>%
  summarise(Avg_mpg = mean(mpg)) %>%
  arrange(desc(Avg_mpg))

#------   Mutate    ------
#km_per_litre using the mutate() function. assume 1 mpg is 0.425 km/l.

mycars = mtcars %>% 
  select(miles_per_gallon = mpg, horse_power = hp) %>% 
  tibble::rownames_to_column(var = "model")
  
mycars = mycars %>% 
  mutate(
    km_per_litre = 0.425*miles_per_gallon
  )
mycars

#----- arrange   -------
arrange(mtcars, mpg)
arrange(mtcars, desc(mpg))

#-----  group_by   -----
by_cyl <- mtcars %>% group_by(cyl)
by_cyl

by_cyl %>% 
  summarise(
  disp = mean(disp),
  hp = mean(hp)
) 

# ---   summarise  ------
summarise(mycars,  mpg_mean = mean(miles_per_gallon), km_mean = mean(km_per_litre))

mtcars %>%
  group_by(cyl) %>%
  summarise(mean = mean(disp))

