## create a histogram of Global_active_power
## add axis labels and color

hist(hpc$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power" , col="red")

## create a png of the plot
dev.copy(png, file = "plot1.png")
dev.off()
