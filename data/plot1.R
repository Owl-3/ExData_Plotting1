##Downloading dataset from web

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists('./data')) {
    dir.create('./data')
    download.file(url = url, destfile = './data/electricityData.zip')
    unzip(electricityData.zip)
}


library(tidyverse)

##Reading the zipfile
data1 <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', dec = '.')
summary(data1)  ##dataset summary
names(data1)


#subsetting the dataset
subsetdata <- data1[data1$Date %in% c('1/2/2007', '2/2/2007'), ]
summary(subsetdata)
view(subsetdata)

##converting the the character variables to numeric for plotting
Global_active_power <- as.numeric(subsetdata$Global_active_power)
Global_reactive_power <- as.numeric(subsetdata$Global_reactive_power)
Voltage <- as.numeric(subsetdata$Voltage)
Global_intensity <- as.numeric(subsetdata$Global_intensity)
submetering_1 <- as.numeric(subsetdata$Sub_metering_1)
submetering_2 <- as.numeric(subsetdata$Sub_metering_2)
submetering_3 <- as.numeric(subsetdata$Sub_metering_3)

#plotting

#plot1
hist(Global_active_power, col = 'red', main = "Global Active Power", xlab = 'Global Active Power (kilowats)')

#saving png file
dev.copy(png, file = 'plot1.png', width = 480, height = 480)
dev.off()







