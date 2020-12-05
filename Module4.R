#Module 4 Problem 1 Divide 743 by 2 and obtain the result such that the output gives us a value without the decimal point.

a<- 743%/%2
a


#Module 4 Problem 2 Print a 3*4 array of three dimensions, which has the input of vectors sequencing from 13554:13590 and index the second row and third column element of third dimension of the array.
a <- matrix(data=c(13554:13590),nrow=3,ncol=4)
a
a[2,3:3]


#Module 4  Problem 3:  What is the command to install a package in R and how do you invoke it?
install.packages('readxl')
library('readxl')

#Module 4  Problem 4: Create an if statement that prints the name of the team that won.
#	Where Team A scored 678 (out of 700), Team B scored 666 (out of 700).

a_score <- 678/700
b_score <- 666/700
if (a_score>b_score) {
  print('team a won')
}else {
  print('team b won')
}

#Module 4 Problem 5: Check whether the given number is positive and divisible by 5 or not using conditional statements
#Given number: 468

given_number <- 468
if(given_number>0) {
  print("given number is positive")
  x(given_number)
} else {
  print("given number is negative")
  x(given_number)
}

x <-function(a) {
  if(a %% 5 ==0) {
    print("given number is divisible by 5")
  } else {
    print("given number is not divisible by 5")
  }
}


#Module 4 Problem 6: calculate normalization
normalized_value <- function(a) {
  return ((a - min(a)) / (max(a) - min(a)))
}
a <- c(33,434,242,434354,
       545,54,56,56,4534,5342,24,5,65,65,767,
       8,78,79,79,64,635,3,4,35,57,678,5,86,
       86,457,546,34,345,34,3,4,65,6,57,347) 

a

#Module 4 Problem 7: calculate normalization
normalized_value(a)


#Module 4 Problem 8: Achieve a Boxplot, Histogram and scatter plot on a given data ‘Q1’. Use any column/columns to get the respective outputs.
data <- read_csv(file.choose())

data

boxplot(data$workex)

hist(data$workex)

plot(data$gmat,data$workex,xlab = 'GMAT' , ylab='WORKEX')
