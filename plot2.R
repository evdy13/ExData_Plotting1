## create a Time_Date merged column
hpc$Time_Date <- strptime(paste(hpc$Date, hpc$Time, sep=","), format="%d/%m/%Y,%H:%M:%S")

## create plot, make it blank intially, assign axis labels
plot(hpc$Time_Date, hpc$Global_active_power, type = "n", xlab = "", ylab="Global Active Power (kilowatts)")

## fill in lines
lines(hpc$Time_Date, hpc$Global_active_power, type ="l")

## create png of graph
dev.copy(png, file = "plot2.png")
dev.off()
