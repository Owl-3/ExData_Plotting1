

#plot3
png(filename = 'plot3.png')
plot(datetime, submetering_1, type = 'l', ylab = 'Energy Submetering', xlab = '')
lines(datetime, submetering_2, type = 'l', col = 'red')
lines(datetime, submetering_3, type = 'l', col = 'blue')
legend('topright', c('submetering-1', 'submetering_2', 'submetering_3'), lty = 1, lwd = 2.5, col = c('black', 'red', 'blue'))

#saving png file
dev.copy(png, file = 'plot3.png', width = 480, height = 480)
dev.off()

