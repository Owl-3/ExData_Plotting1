#plot2


datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep =" "), "%d/%m/%Y %H:%M:%S")
datetime

plot(datetime, Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")

#saving png file
dev.copy(png, file = 'plot2.png', width = 480, height = 480)
dev.off()
