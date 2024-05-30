### the guts of R


x<- 2
x<- 3
y<- x+10
i<- exp(2)

rm(x)

### Logic

x<- 3
x>y #bigger
x<y #smaller
x==y #equal
x!= y #not equal


## Data type 

class(i)
is.integer(i)

#integer the number
as.integer(i)

#character (Letters)

z<- "Hello"
class(z)

# Vector

v1 <- c(1,2)
v2 <- c(11,22,33)
v2 <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
v3 <- rep(22,2) # function that automatically repeats the value with the number of times specified
v3 <- rep(22,20)# number first, times later
v4 <- 1:100 # from 1 to 100
v5 <- seq(from=1, to=100, by=2)

v4[20]
v5[c(10,12)]

v6 <- v2[-3]

# 10 random number from 10 to 50
v7 <- sample(10:50, 10)

v8 <- rnorm(50,100, 100) # create 50 random numbers with mean 100 and sd 100
hist(v8)


# summary
length(v4)
summary(v4)
sum(v4)


#### Matrix ####
# Data strucutures in two dimensions, only numbers
mat1 <- matrix(v5, nrow=10, ncol=5)
colnames(mat1) <- v2

mat1[1,2] # row, column
mat1[4,] #row
mat1[,3] #column

xx <- mat1[,3]
q <-mat1[,c(1,3)]

### Data Frame ####
# mixture with data types
cars <- mtcars
length(cars)
ncol(cars)
nrow(cars)
colnames(cars)
cars[,4]
cars$hp

### List ###

all<- list(v1, v2, v3, v4, v5, mat1, cars)
all[6]

#### 6. Exercises ####

# Write a R program to create a sequence of numbers from 20 to 50
 m<- seq(20,50)

# find the mean of the numbers going from 20 to 60
a<- seq(20,60)
mean(a)
# sum of numbers from 51 to 91
b<- seq(51,91)
sum(b)
# repeat "I got this" 19 times
c<- rep("I got this",19)
c
# create a matrix of 3 columns and 5 rows filled with numbers from 300 to 335
e<-seq(300,335)
f<- matrix(e, nrow=5, ncol=3)
#Write a R program to create three vectors a,b,c with 3 integers. 
h<- c(1,2,3)
g<- c(4,5,6)
k<- c(7,8,9)
#Combine the three vectors to become a 3×3 matrix where each column 
mat3<- matrix(c(h,g,k), nrow=3, ncol=3)
colnames(mat3)<- c("a","b","c")

#represents a vector. Print the content of the matrix.
mat3
