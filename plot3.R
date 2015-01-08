
setwd("C:\Users\Jawad\Documents\GitHub\exploratoryAnalysisCourseProject1/")
source("readData.R")

# Plot3
par(mfcol=c(1,1),mar=c(5,4,4,1))
with(data,plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type="n"))
with(data,lines(DateTime,Sub_metering_1))
with(data,lines(DateTime,Sub_metering_2,col="red"))
with(data,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",pch="_",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),cex=0.8)
dev.copy(png,file="plot3.png", width = 480, height = 480, units = "px")
dev.off()
