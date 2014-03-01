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
a <- c(1, 3, NA, 7, 9)
sum(a)
sum(a, na.rm­ = TRUE)­ 


####
#MATRICES
####
matrix(0, 3, 4)


a <- 1:12
matrix(a, 3, 4)

plank<-1:8
dim(plank) <- c(2, 4) 
print(plank)

matrix(1:25,5,5)

##accesing a matrix
print(plank)
plank[2, 3]

plank[1,4]

##Assign multiple values
plank[1,4]

#access a whole row
plank[2,]
#access a whole column
plank[, 4] 

#mulitple columns
plank[, 2:4]


#####
#PLOTTING MATRX DATA
#####
elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0

contour(elevation)
persp(elevation)
persp(elevation, expand=0.2)

##working with sample data-matrices
contour(volcano)
persp(volcano, expand=0.2)
image(volcano)

#########
#SUMMARY STATISTICS
########
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')

mean(limbs)

barplot(limbs)
abline(h = mean(limbs))

limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 
                    'Scooter', 'Dan', 'Mikey', 'Davy Jones')
mean(limbs)
median(lim­bs) 

abline(h = median(limbs))

pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
barplot(pounds)
meanvalue<-mean(pounds)
abline(h=meanvalue)

deviation<-sd(pounds)
abline(h = meanvalue + deviation)


#######
#FACTORS
########
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
print(chests)
print(types)

as.integer(types)

levels(types)
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)

plot(weights, prices, pch=as.integer(types))
legend("topright", c("gems", "gold", "silver"), pch=1:3)
legend("topright", levels(types), pch=1:length(levels(types)))


#########
#DATA FRAME
########

#combine vectors
treasure <- data.frame(weights, prices, types)
treasure

#accessing by indice brackets
treasure[[2]]
treasure[["weights"]]

#shorthand
treasure$prices
treasure$types




