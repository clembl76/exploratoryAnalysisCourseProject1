
setwd("C:\Users\Jawad\Documents\GitHub\exploratoryAnalysisCourseProject1/")

setClass('myDate')
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )

# conversion de Time en Date ok mais met une date farfelue
setClass('myTime')
setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S") )

data<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",
               colClasses=c("myDate","myTime",rep("numeric",7)))#,nrows=10)
data<-subset(data,Date=='2007-02-01' | Date=='2007-02-02')

data["DateTime"] <- NA
data$DateTime <- strptime(paste(data$Date,format(data$Time, "%H:%M:%S"),sep=" "),format="%Y-%m-%d %H:%M:%S")
