########
#THE FORM SIMPLE STATISTICAL MODELS
#######

#The tilde sign

mod.1<-lm(temp.seas~temp, data=data)
mod.1

summary(mod.1)

plot(mod.1$residuals)

hist(mod.1$residuals)
