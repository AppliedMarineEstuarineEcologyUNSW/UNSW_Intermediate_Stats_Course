########
#FUNCTIONS
#######

#Standard Deviation

mean(hab_counts$Gast)
var(hab_counts$Gast)
length(hab_counts$Gast)

sqrt(var(hab_counts$Gast)/length(hab_counts$Gast))

sqrt(var(hab_counts$Amph)/length(hab_counts$Amph))

standard.error <- function(x) {
  sqrt(var(x)/length(x))
}

standard.error(hab_counts$Gast)
standard.error(hab_counts$Amph)


standard.error <- function(x) {
  v <- var(x)
  n <- length(x)
  sqrt(v/n)
}
