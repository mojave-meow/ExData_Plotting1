powdata<-read.delim("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
powdata$Date<-as.Date(powdata$Date,format="%d/%m/%Y")
powdata$DateTime<-paste(powdata$Date,powdata$Time)
powdata$DateTime<-strptime(powdata$DateTime,format="%Y-%m-%d %H:%M:%S")
subpowdata<-powdata[powdata$Date>=as.Date("2007-02-01")&powdata$Date<as.Date("2007-02-03"),]
png("plot1.png",width=480,height=480)
hist(subpowdata$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()