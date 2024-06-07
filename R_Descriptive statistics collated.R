#To call from files: e_quakes=read.csv ('path/quakes.csv', header=TRUE, sep=",")

#To call from inbuilt R dataset
e_quakes<-datasets::quakes

#To print first 10 and last 10 lines
head(e_quakes,10)
tail(e_quakes,10)

#To extract specific column(s)
e_quakes[,c(1,2)]
e_quakes$lat
df <- e_quakes[,-5]

#For descriptive stats
summary(e_quakes$lat)
summary(e_quakes)

#Scatter Plot
plot(e_quakes$mag)
plot(e_quakes$depth, e_quakes$mag)
plot(e_quakes)

# points and lines 
plot(e_quakes$mag, type= "l") # p: points, l: lines,b: both
plot(e_quakes$mag, xlab = 'No of Instances', 
     ylab = 'Magnitude', main = 'Maginute of Earthquakes',
     col = 'blue')

# Horizontal bar plot
barplot(e_quakes$mag, main = 'Earthquake Magnitudes',
        ylab = 'Magnitude', col= 'blue',horiz = T,axes=T)
barplot(e_quakes$depth, main = 'Depth',
        ylab = 'Depth', col= 'blue',horiz = T,axes=T)

#Histogram
hist(e_quakes$mag)

#Single box plot
boxplot(e_quakes$mag,main="Boxplot")
#Finding values of outliers
boxplot.stats(e_quakes$mag)$out

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')

#MULTIPLE GRAPHS IN ONE IMAGE/PANEL
##no of rows and columns(mfrow),
##dimensions of margin of the grid(mar), 
##position of the axes labels(las: 1 for horizontal, las: 0 for vertical)
##whether a box/border is to be included around the plot (bty) - o means yes, n means no
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
 #now put any 9 graphs because 3rowx3col grid
 plot(e_quakes$mag)
 plot(e_quakes$depth, e_quakes$mag)
 barplot(e_quakes$mag, main = 'Earthquake Magnitudes',
         ylab = 'Magnitude', col= 'blue',horiz = T,axes=T)
 barplot(e_quakes$depth, main = 'Depth',
         ylab = 'Depth', col= 'blue',horiz = T,axes=T)
 plot(e_quakes$mag, type= "l") # p: points, l: lines,b: both
 plot(e_quakes$mag, xlab = 'No of Instances', 
      ylab = 'Magnitude', main = 'Maginute of Earthquakes',
      col = 'blue')
 hist(e_quakes$mag)
 boxplot(e_quakes$mag,main="Boxplot")
 boxplot(e_quakes[,1:4],main='Multiple')
 
#Other features for descriptive statistical analysis
 ##na.rm is to remove any NA values within the data
sd(e_quakes$mag,na.rm = T)
sd(e_quakes$depth,na.rm = T)

var(e_quakes$mag,na.rm = T)
var(e_quakes$depth,na.rm = T)

#search for required package to install on RDocumentation website, find package name (e1071) and install
#Then search for it in packages list on R and tick the checkbox
skewness(e_quakes$mag,na.rm = T)
skewness(e_quakes$depth,na.rm = T)

kurtosis(e_quakes$mag,na.rm = T)
kurtosis(e_quakes$depth,na.rm = T)
