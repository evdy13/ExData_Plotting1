plot(hpc$Time_Date, hpc$Global_active_power, type = "n", xlab = "", ylab="Global Active Power (kilowatts)")
lines(hpc$Time_Date, hpc$Global_active_power, type ="l")
dev.copy(png, file = "plot2.png")
dev.off()
