#Module 3 Problem 1 Perform all the arithmetic operations (Addition, Subtraction, Multiplication, Division, Exponent, Modulus, Integer Division) on the given vectors:
a <- c(8.2, 3, 6, 1.4)
b <- c(2, 4, 8, 6)

a+b
a-b
a*b
a/b
a^b
a%%b
a%/%b


#Module 3 Problem 2 Prove associative law 
a <- c(8.2, 3, 6, 1.4)
b <- c(2, 4, 8, 6)
c <- c(1, 2.2, 2.6, 5)
#RHS addition
rhs<-a+(b+c) 
#LHS addition
lhs<-(a+b)+c


#RHS addition
rhs_m<-a*(b*c) 
rhs_m
#LHS addition
lhs_m<-(a*b)*c
lhs_m

#Module 3 Problem 3 create 2x4 matrix and find the result of multiplication 
c <- matrix(data=c(1,2,3,4), nrow=2 , ncol=4)
d <- t(c)
print(c**b)


#Module 4 Problem 4 Convert the given vector into a data frame using an appropriate function then convert the same into a matrix.
ob1<-c(1,2,3) 
ob2<-c(10,20,30)  
ob3<-c(100,200,300)
ob4<-c(1000,2000,3000)

df1 <- data.frame(ob1,ob2,ob3,ob4)
df1
str(df1)
class(df1)

v<-as.vector(t(df1))
v
class(v)

#Module 4 Problem 5 Given is the information of creating a data frame. What would be the resultant of doing “C.df%*%B”
C.df <- data.frame(data 
                   = matrix(data=c(1,10,100,1000,2,20,200,2000,3,30,300,3000), nrow=3, ncol=4, byrow = T))

C.df


B <- t(C.df[1:3])
B


print(C.df%*%B)

#Output --> Error in C.df %*% B : requires numeric/complex matrix/vector arguments
