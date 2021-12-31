

#plot4

par(mfrow = c(2,2))

#first plot
plot(datetime, Global_active_power, type = 'l', ylab = 'Global Active Power', xlab = '', cex = 0.17)

#2nd plot
plot(datetime, Voltage, type = 'l')

#3rd plot
plot(datetime, submetering_1, type = 'l', ylab = 'Energy Submetering')
lines(datetime, submetering_2, type = 'l', col = 'red')
lines(datetime, submetering_3, type = 'l', col = 'blue')
legend('topright', c('submetering_1', 'submetering_2', 'submetering_3'),cex = 0.17, lty = 1, lwd = 2.5, col = c('black', 'red', 'blue'), bty = 'o')

#4th plot
plot(datetime, Global_reactive_power, type = 'l')

#saving png file
dev.copy(png, file = 'plot4.png', width = 480, height = 480)
dev.off()



