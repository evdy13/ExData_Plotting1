par(mfrow = c(2, 2), mar= c(2, 2, 1, 1))
with(hpc, {
  
  plot(hpc$Time_Date, hpc$Global_active_power, type = "n", xlab = "", ylab="Global Active Power")
  lines(hpc$Time_Date, hpc$Global_active_power, type ="l")
  
  plot(hpc$Time_Date, hpc$Voltage, type = "n", xlab = "", ylab="Voltage")
  lines(hpc$Time_Date, hpc$Voltage, type ="l")
  
  with(hpc, plot(hpc$Time_Date, Sub_metering_1, type = "n", xlab = "", ylab="Energy sub Metering"))
  lines(hpc$Time_Date, hpc$Sub_metering_1, col = "black")
  lines(hpc$Time_Date, hpc$Sub_metering_2, col = "red")
  lines(hpc$Time_Date, hpc$Sub_metering_3, col = "blue")
  legend("topright", pch = "|", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2" , "Sub_metering_3"))
  
  plot(hpc$Time_Date, hpc$Global_reactive_power, type = "n", xlab = "", ylab="Global_reactive_power")
  lines(hpc$Time_Date, hpc$Global_reactive_power, type ="l")
})
dev.copy(png, file = "plot4.png")
dev.off()
