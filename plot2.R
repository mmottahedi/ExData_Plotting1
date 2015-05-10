setwd("/home/mfc/cwd/data.science/EDA/Project1")

library(data.table)
data <- read.table("/home/mfc/cwd/data.science/EDA/Project1/data.txt",sep = ";",header = T,na.strings = "?")



date <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- cbind(date,data)

png(filename="plot2.png",width =480 , height = 480)
plot(data$date[1000:5320],data$Global_active_power[1000:5320],type="l",
     xlab = " ",ylab="Voltage")
dev.off()
