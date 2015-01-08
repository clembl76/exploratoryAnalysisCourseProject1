
setwd("C:\Users\Jawad\Documents\GitHub\exploratoryAnalysisCourseProject1/")
source("readData.R")

# Plot2
par(mfcol=c(1,1),mar=c(5,4,4,1))
plot(data$DateTime,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png", width = 480, height = 480, units = "px")
dev.off()