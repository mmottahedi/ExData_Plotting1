setwd("/home/mfc/cwd/data.science/EDA/Project1")

library(data.table)
data <- read.table("/home/mfc/cwd/data.science/EDA/Project1/data.txt",sep = ";",header = T,na.strings = "?")



date <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- cbind(date,data)

png(filename="plot3.png",width =480 , height = 480)

plot(data$date[1000:5320],data$Sub_metering_1[1000:5320],type="l",col= "black",
     xlab = " ",ylab="Energy submetering",ylim=c(0,50))
points(data$date[1000:5320],data$Sub_metering_2[1000:5320],type="l",col = "red",
       xlab = " ",ylab="Global active power (killowatts)")
points(data$date[1000:5320],data$Sub_metering_3[1000:5320],type="l", col = "blue",
       xlab = " ",ylab="Global active power (killowatts)")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
dev.off()
