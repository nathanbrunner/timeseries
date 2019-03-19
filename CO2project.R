## We read the table
jubany <- read.table("JubanyCleaned.txt", header = TRUE, sep="\t")

## We make the time series
?ts
co2 <- ts(jubany[,2],frequency=12,start=c(1994,3))

## We plot the data
plot(co2,main="CO2 in Jubany",xlab="Years", ylab="Atmospheric CO2 (ppmv)")

# STL decomposition with approximation for missing values
install.packages("zoo")
library("zoo")
stl<-stl(co2, na.action = na.approx, s.window=12)
plot(stl,main="STL decomposition")
