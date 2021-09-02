##(A)Vectors
#range function
# method 1
z <- 1:10
z

#method 2
x <- c(1:10)
x

#combine or concatenate function
y <- c(1,3,5,10)
y

#Mixdatatype - character data structure is having max priority.
a <- c(2,5.4, 3+4i, T,'hi')
class(a)
a

##structure function
str(a)

#replicate function
#Each element repeated n no. of times
x <- rep(1:5, each = 4)
x

#complete range is repeated n no. of times
x1 <- rep(1:5, times = 3)
x1

#arthimetic functions for vector
#operation on unequal vector length
a <- 1:4
b <- 1:7
c <- a+b
c

a <- c(1,3,6,8)
b <- c(5,-1)
c <- a - b
c

a <- c(1,3,6,8)
b <- c(5,2,-1,0)
d <- a*b
d

#operation on equal vector length
a1 <- c(2,8,6)
a2 <- c(2,4,3)
a1/a2
a1%%a2
a1^a2


#operation on unequal vector length which is multiple of other
a<- 1:3
b<- 1:6
a+b

#Relational operators
a <- 3:5
b <- 1:6
b >= a

#Relation operators on unequal vector length
a <- 4:6
a
b <- 6:9
b
a < b


#vector indexing
a <- c('a','b','d','e')
a
a[c(1,4)]
a[1:3]
a[3]

a[-3] ## to delete a particular element
a ## to print all elements


# to delete element from vector created
a <- a[-3]
a

# selecting multiple elements
a<- c('a','b','d','e')
a[c(1,3)]
a[(1:3)]

## sorting of vectors 
v1 <- c('a','d','e','v','av')
sort(v1, decreasing = T)


#Missing values - check missing values in a data
v1 <- c(5,6,-8,NA,-20,8.6,NA)
is.na(v1)

#Subsetting on missing value vectors
v1[is.na(v1)]

#subsetting using combination of logical operators
y <- v1[!is.na(v1) & (v1 > 4)]
y

## Note: will subset values greater than 4 and NA
y <- v1[v1 > 4]
y


# (B) matrix
a <- matrix(1:12, nrow = 3, byrow = F)
a


#index function to access elements 
## Row x column format
a[2,3]            ## access a particular element
a[c(1,3), ]      ## selective rows x all columns
a [,(3:4)]       ## all rows x selective columns


#dimension of the matrix
a <- matrix(1:12, nrow = 4,byrow = T)
a
dim(a)

# attribute function - 
#to check the dimension of a matrix (Rows x column)
a1 <- matrix(1:12, nrow = 3,byrow = F)
a1
attributes(a1)


#assign column names to a matrix using colnames function
a <- matrix(1:12, nrow = 3,byrow = T)
col <- c('col1','col2','col3','col4')
colnames(a) <- col
a


#cbind and rbind function to add a row or column 
## in the matrix
a <- matrix(1:12, nrow = 3,byrow = T)
a
b <- cbind(a,c(1,2,3))
b
c <- rbind(b,(1:5))
c

#give the dimension names to the above matrix
dimnames(c) <- list(c('row1','row2','row3','row4'),
                    c('col1','col2','col3','col4','col5'))
c
class(c)

#another method to create matrix with vectors
v1 <- c(2,3,5)
v2 <- c(10,15,25)
v3 <- c(20,21,8)
col_names <-   c("col1","col2","col3")
row_names <- c("row1",'row2','row3')

mtr <- matrix(c(v1,v2,v3),nrow = 3,dimnames = 
                list(row_names,col_names))
mtr

# create transpose of matrix
t(mtr)

??matrix
help(matrix)

# adding two vectors 
v1 <- c(2,3,5)
v2 <- c(10,15,25)
v3 <- v1 + v2
v3

# (C) data frame
a <- c(2,3,5,1)
b <- c('aa','ss','dd','dd')
c <- c(T,F,F,F)
df <- data.frame(b,a,c)
df
class(df)
## access elements in data 
df[2,3]           ## access an element using (row,column) format 
df[df['a']> 2,1:2]   ## access elements using condition


## sorting in dataframe
df
df[order(df[,1]),1:2]
df[order(df[,1],df[,2]),]

help('order')

#(d)create list
my.list <- list(c(1,5,2),c('a','s','z','b'),1:8,-1)
my.list

## normal refrencing
my.list[1]
my.list[3]


## nested referencing 
my.list[[1]][3]
my.list[[3]][8]

