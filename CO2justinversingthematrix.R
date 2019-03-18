# We read data from txt and create the time series
junbanytemp <- read.table("JubanyMonthly.txt", header = TRUE, sep=" ")
c1 <- junbanytemp[1,2:13]
l1 <- t(c1)
c2 <- junbanytemp[2,2:13]
l2 <- t(c2)
c3 <- junbanytemp[3,2:13]
l3 <- t(c3)
c4 <- junbanytemp[4,2:13]
l4 <- t(c4)
c5 <- junbanytemp[5,2:13]
l5 <- t(c5)
c6 <- junbanytemp[6,2:13]
l6 <- t(c6)
c7 <- junbanytemp[7,2:13]
l7 <- t(c7)
c8 <- junbanytemp[8,2:13]
l8 <- t(c8)
c9 <- junbanytemp[9,2:13]
l9 <- t(c9)
c10 <- junbanytemp[10,2:13]
l10 <- t(c10)
c11 <- junbanytemp[11,2:13]
l11 <- t(c11)
c12 <- junbanytemp[12,2:13]
l12 <- t(c12)
c13 <- junbanytemp[13,2:13]
l13 <- t(c13)
c14 <- junbanytemp[14,2:13]
l14 <- t(c14)
c15 <- junbanytemp[15,2:13]
l15 <- t(c15)
c16 <- junbanytemp[16,2:13]
l16 <- t(c16)

junbany <- rbind(l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15, l16)
write.table(junbany, "mydata.txt", sep="\t")


?ts
co2 <- ts(junbany[,1],frequency=12,start=c(1994,3))

# We plot the data
plot(co2)

# STL decomposition
#par(mar=c(3.1,3.1,1.1,0.2),mgp=c(1.5,0.4,0),font.main=1,cex.main=0.8)
#plot(stl(co2,s.window=13))

# spectrum
#par(mfrow=c(2,2))
#par(mar=c(5.1,3.1,1.6,0.4),mgp=c(1.7,0.6,0),font.main=1,cex.main=0.8)
#spectrum(co2,main="",ylim=c(10^(-5),10^2))
#spectrum(co2,main="",spans=c(3),ylim=c(10^(-5),10^2))
#spectrum(co2,main="",spans=c(5,5),ylim=c(10^(-5),10^2))
#spectrum(co2,main="",spans=c(7,9),ylim=c(10^(-5),10^2))
