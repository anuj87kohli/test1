#1) Variables in R 
b <- (10.38)
B = 20L
class(b)
class(B)

# Enter numeric data type
c <- 'Learning R is fun'
c
class(c)
# Enter character data type

d <- TRUE 
# Enter Logical data type
class(d)


## 2) Data types in R 
a <- 5.8L # Normal method to enter integer
a
class(a)
a <- as.integer(5.8) # Coercive method to enter integer
a
class(a)

## few more examples 
a <- 5L
c <- "Hello"
b <- 6.2
class(a)
class(b)
class(c)

## another method
typeof(a)
typeof(b)  # ANS double number
typeof(c)  

vasu <- c(1,'3 is my lucky no.',6,F)
vasu

class(vasu)
typeof(vasu)

e <- 6.23 + 4i #Enter complex data type
e
class(e)

a1 <- sqrt(-25)  # NaN is produced
a1

# 3) Data operators in R
a <- 2
b <- 6

##Arthimetic operators
a+b
a*b
a/b
b/a
#gives quotient as output
a^b

# Modulus operator
a%%b  
#gives remainder as output
b%%a

## Relational operators (gives a logical output)
a <= b
a > b
a == b 
a != b

## Logical operators (AND, OR , NOT)
##AND
a1 <- T
b1 <- F
a1 & b1

T & T
T & F
F & T
FALSE & FALSE

##OR
TRUE | TRUE
T | F
F | T
FALSE | FALSE

##NOT
!(TRUE)

##Data types in R
## vector
vtr <- c(10,'g',8,9)
vtr
class(vtr)
typeof(vtr)

vtr1 <- c(5,3,7,1)
vtr1

##list
l1 <- list(c(1,3,5),"R",8,9)
l1
class(l1)


## array
help(array)
??array
vtr1 <- c(7,"a",8,9,1,-1,-3,T)
length(vtr1)
vtr2 <- c(3,"b", F,2)
length(vtr2)

arr <- array(c(vtr1,vtr2), dim = c(3,2,2))
arr
class(arr)


##matrix (2D structure)
help("matrix")
mtr <- matrix(c(vtr1,vtr2),nrow =  4, ncol = 3, byrow = T)
mtr

mtr1 <- matrix(1:8,nrow =  4)
mtr1

## range fumction
a2 <- 1:8
a2


##dataframe 
id <- c("A","B","C")
score <- c(100,105,116)
Name <- c('raj','maddy','sawan')
df <- data.frame(id,score,Name)
df
class(df)


## factors (levels are CASE SENSITIVE )
c1 <- c('low',"med","high","high","LOW","med","med")
c1
length(c1)
class(c1)
fact1 <- factor(c1)
fact1

summary(fact1)
class(fact1)

help("factor")
##------ End of practical session1------##







