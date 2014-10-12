## create empty plot, assign axis labels
with(hpc, plot(hpc$Time_Date, Sub_metering_1, type = "n", xlab = "", ylab="Energy sub Metering"))

## plot lines of each column and assign a color
lines(hpc$Time_Date, hpc$Sub_metering_1, col = "black")
lines(hpc$Time_Date, hpc$Sub_metering_2, col = "red")
lines(hpc$Time_Date, hpc$Sub_metering_3, col = "blue")

## create legend matched up with color
legend("topright", pch = "|", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3"))

## create png of plot
dev.copy(png, file = "plot3.png")
dev.off()
