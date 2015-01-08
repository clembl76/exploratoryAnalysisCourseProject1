setwd("C:\Users\Jawad\Documents\GitHub\exploratoryAnalysisCourseProject1/")
source("readData.R")

# Plot1
par(mfcol=c(1,1),mar=c(5,4,4,1))
hist(data$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.copy(png,file="plot1.png", width = 480, height = 480, units = "px")
dev.off()