setwd("/home/mfc/cwd/data.science/EDA/Project1")

library(data.table)
data <- read.table("/home/mfc/cwd/data.science/EDA/Project1/data.txt",sep = ";",header = T,na.strings = "?")



date <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- cbind(date,data)


png(filename="plot1.png",width =480 , height = 480)
hist(data$Global_active_power[1:4321],col="red", freq=T,
     xlab = "Global Active Power (killowatts)",main="Global Active Power")
dev.off()
