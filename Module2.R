# install.packages("readr")
library(readr)
# loading dataset which is a  csv file
df <- read.csv(file.choose())

# checking str and summary of the dataset
View(df)

attach(df)

# take two or three copies of  original data frame

df1 <- df # first copy

df2 <- df # 2nd copy

df3 <- df # 3rd copy

#Module 2 Problem 1 Finding NA in data frame.
na_columns <- apply(df1, 2, function(x) any(is.na(x)))
na_columns

#Module 2 Problem 1 a) Omit NA from data frame
df4 <- na.omit(df1)
df4 
na_columns_removed <- apply(df4, 2, function(x) any(is.na(x)))
na_columns_removed

#Module 2 Problem 1 b) replace the first NA value in the dataset with your name in that place
new_DF <- subset(df2, is.na(df2))
new_DF[1,1][is.na(new_DF[1,1])] <- 'MAHESH'
new_DF
#Module 2 Problem 1 d)	Find the factor of each column in the dataset
lapply(df2,factor)

#Module 2 Problem 1 d)	Find the class of each column in the dataset
lapply(df2,class)
sapply(df2,class)

#Module 2 Problem 1 e) structure and summary of the dataset
str(df)
summary(df)


####Module 2 Problem 2 : Use R to create the following two matrices and do the indicated matrix multiplication.      
A = matrix( 
  c(7,9,12,2,4,3), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE
)

B = matrix( 
  c(1,7,12,19,2,8,13,20,3,9,14,21), # the data elements 
  nrow=3,              # number of rows 
  ncol=4,              # number of columns 
  byrow = TRUE
)
B

print(A %*% B) 


####Module 2 Problem 3 :create the following two matrices and multiply each value to its successive position.             
C = matrix( 
  c(1,2,3,4,5,6,7,8,9), # the data elements 
  nrow=3,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE
)

D = matrix( 
  c(1,4,7,2,5,8,3,6,9), # the data elements 
  nrow=3,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE
)


print(C * D) 


