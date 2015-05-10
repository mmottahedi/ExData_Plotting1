setwd("/home/mfc/cwd/data.science/EDA/Project1")

library(data.table)
data <- read.table("/home/mfc/cwd/data.science/EDA/Project1/data.txt",sep = ";",header = T,na.strings = "?")



date <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- cbind(date,data)

par( mfrow = c(2,2))
png(filename="plot4.png",width =480 , height = 480)

par( mfrow = c(2,2))

plot(data$date[1000:5320],data$Global_active_power[1000:5320],type="l",
     xlab = " ",ylab="Global active power (killowatts)")

plot(data$date[1000:5320],data$Voltage[1000:5320],type="l",
     xlab = "date time",ylab="Voltage")

plot(data$date[1000:5320],data$Sub_metering_1[1000:5320],type="l",col= "black",
     xlab = " ",ylab="Energy submetering",ylim=c(0,50))
points(data$date[1000:5320],data$Sub_metering_2[1000:5320],type="l",col = "red",
       xlab = " ",ylab="Global active power (killowatts)")
points(data$date[1000:5320],data$Sub_metering_3[1000:5320],type="l", col = "blue",
       xlab = " ",ylab="Global active power (killowatts)")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")


plot(data$date[1000:5320],data$Global_reactive_power[1000:5320],type="l",
     xlab = "date time",ylab="Global reactive power (killowatts)")

dev.off()
