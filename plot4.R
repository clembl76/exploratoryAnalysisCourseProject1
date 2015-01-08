
setwd("C:\Users\Jawad\Documents\GitHub\exploratoryAnalysisCourseProject1/")
source("readData.R")

# Plot4
par(mfcol=c(2,2),mar=c(4,5,2,1))

plot(data$DateTime,data$Global_active_power,type="l",xlab="",ylab="Global Active Power")

with(data,plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type="n"))
with(data,lines(DateTime,Sub_metering_1))
with(data,lines(DateTime,Sub_metering_2,col="red"))
with(data,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",pch="_",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),bty="n",cex=0.7)

plot(data$DateTime,data$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(data$DateTime,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.copy(png,file="plot4.png", width = 480, height = 480, units = "px")
dev.off()