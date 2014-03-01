#####
#UNSW Advanced Statistics Course
#####

#####################
#The Basics
#####################

# Type the string "Arr, matey!". (Don't forget the quotes!)

#Now try multiplying 6 times 7

3 < 4

2 + 2 == 5

T == TRUE

x <- 42

x / 2

x <- "Arr, matey!"
x

x <- TRUE

################
#FUNCTIONS
################

sum(1, 3, 5)

rep("Yo ho!", times = 3)

sqrt(16)

##########
#HElP
#########
help(sum)

example(min)

#####
#VECTORS
#####

c(4, 7, 9) 

c('a', 'b', 'c') 

###VECTORS Cannot hold multiple types of DATA
c(1, TRUE, "three")
#Note that the vector has converted all into CHARACTER STRINGS

5:9

seq(5, 9) 

seq(5, 9, 0.5)

9:5 

######
#Accessing VECTORS
######

sentence <- c('walk', 'the', 'plank')
sentence[3]

sentence[1]

#assign elements of a vector 
sentence[3­] <- "dog"­
sentence[4] <- 'to'

#accessing multiple values
sentence[c(1, 3)]

sentence[2:4]

#assigning multiple values and growing a vector
sentence[5:7] <- c('the', 'poop', 'deck')

#########
#VECTOR NAMES
########
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
ranks["first"]

#######
#PLOTTING A VECTOR
######

barplot(1:100)

vesselsSunk <- c(4, 5, 1)
barplot(vesselsSunk)

names(vesselsSunk) <- c("England", "France", "Norway")
barplot(vesselsSunk)


#######
#VECTOR MATH
######

a <- c(1, 2, 3)
a + 1

a / 2 

a*2

b <- c(4, 5, 6)
a + b

a-b

a == c(1, 99, 3)

sin(a)

sqrt(a)

######
#Scatter Plots
######

#Plot One
x <- seq(1, 20, 0.1)
y <- sin(x)

#Plot Two
values <- -10:10
absolutes <- abs(values)
plot(values, absolutes)


########
#NA's
#######



