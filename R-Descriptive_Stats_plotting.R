airquality<-datasets::airquality
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
head(airquality[,c(1,2)],10)
df<-airquality[,-6]
airquality$Ozone
summary(airquality$ozone)
summary(airquality$Ozone)
summary(airquality)

plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind, type="p")
plot(airquality)
barplot(airquality$Ozone, horiz=T, axes=T)
barplot(airquality$Ozone, horiz=T, axes=F)
hist(airquality$Temp)
boxplot(airquality$Wind)
boxplot.stats(airquality$Wind)$out
boxplot(airquality[,1:4])

par(mfrow=c(2,2),mar=c(2,5,2,1), las=0, bty="o")
plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind, type="p")
barplot(airquality$Ozone, horiz=T, axes=T)
hist(airquality$Temp)

par(mfrow=c(2,2),mar=c(2,5,2,1), las=0, bty="n")
plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind, type="p")
barplot(airquality$Ozone, horiz=T, axes=T)
hist(airquality$Temp)
