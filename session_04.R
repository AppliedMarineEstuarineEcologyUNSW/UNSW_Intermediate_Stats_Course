#########
#Plotting
########

data<-read.csv("Data/plantHeightSingleSpp.csv",header=T)
str(data)

##Base Plotting

#histograms and density
hist(data$temp.seas)
hist(data$NPP)
plot(density(data$NPP, na.rm=T))

#scatterplots
dev.off()
plot(data$temp.seas,data$temp)
plot(data$temp~data$temp.seas)

plot(data$temp~data$temp.seas,col='black', pch=16, ylab="Temperature",
     xlab="Sea Surface Temperature")

temp.model<-lm(data=data, temp~temp.seas)
abline(temp.model, lwd=1.5, lty=3, col='red')
abline(temp.model)
abline(temp.model, lwd=1.5, lty=3)
abline(temp.model, lwd=1.5, lty=3, col='red')
text("p<0.01", x=1,y=0)

#CUSTOM AXES
plot(data$temp~data$temp.seas,col='black', pch=16, ylab="Temperature",
     xlab="Sea Surface Temperature", axes=F, cex=0.5)
axis(1, at=seq(from=round(min(data$temp.seas)+1),to=round(max(data$temp.seas)+1),
                                                            by=3), pos=0, lty=1) 
axis(2, at= seq(from=min(data$temp),to=max(data$temp)+2, by=5), pos=0, 
     lty=1, las=2)


#boxplots
dev.off()
par(mgp = c(3, 1, 0))
plot(data$height~data$growthform, las=1, cex.axis=0.8, xlab="Growth Form",
     ylab="Height")

###############
#GGPLOT
##############

#A whole new grammer you need to learn. But don't worry it's designed to be very
#easy to understand
#

library(ggplot2)

qplot(growthform, height, data=data, geom=c("boxplot", "point"))
ggplot(data, aes(growthform, height))+geom_boxplot()


ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(.~growthform)
ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(growthform~.)
ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(growthform~entered.by)
ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(growthform~entered.by, scales="free")

##Making a graph look pretty- theme options
ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(growthform~entered.by, scales="fixed")+
  theme(panel.background =element_blank(),
  panel.grid.minor = element_blank(),panel.border = element_blank())+
  xlab("Temperature")+
  ylab("Sea Surface Temperature")


######
#Saving graphics
######

pdf("Output/SST_Temp.pdf", height=8, width=8)
ggplot(data,aes(temp,temp.seas))+geom_point(aes(colour =alt, size=alt))+
  facet_grid(growthform~entered.by, scales="fixed")+
  theme(panel.background =element_blank(),
        panel.grid.minor = element_blank(),panel.border = element_blank())+
  xlab("Temperature")+
  ylab("Sea Surface Temperature")
dev.off()

#ggsave

ggsave("Output/SST_Temp_smaller.pdf")
