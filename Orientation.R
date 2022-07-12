##add 3+3
3+3

##install a package
install.packages("tidyverse")

##loading a package
library(tidyverse)

##read in data
sci_data<-read_csv("data/sci-online-classes.csv", col_names = TRUE)

##preview and information about data frame
sci_data

##pipes- allow to do multiple verbs, like complex sentences
##%>% or |> to do pipes, like saying "and then"
sci_data <- read_csv("data/sci-online-classes.csv") %>% # read in data
  select(student_id, FinalGradeCEMS, course_id, ) %>% # select variables
  rename(final_grade = FinalGradeCEMS) %>% # rename FinalGradeCEMS
  filter(final_grade > .5) %>% # keep grades higher than 50% 
  drop_na() # remove rows with missing data

##write a function to add two numbers together
add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}

add_numbers(5, 10)
add_numbers(2,3)
