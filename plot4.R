assignmentfile <- "./household_power_consumption.txt"
powerconsumption <- read.table(assignmentfile, header = T, sep = ";", colClasses = c("character", "character", rep("numeric", 7)), na = "?")
powerconsumption <- subset(powerconsumption, Date == "1/2/2007" | Date == "2/2/2007")
datetime <- as.Date(powerconsumption$Date, "%d/%m/%Y")
datetime <- paste(datetime, powerconsumption$Time)
datetime <- strptime(datetime, "%Y-%m-%d %H:%M:%S")
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
# plot 4.1
plot(datetime, powerconsumption$Global_active_power, type = "line", ylab = "Global Active Power", xlab = "")
# plot 4.2
plot(datetime, powerconsumption$Voltage, type = "line", ylab = "Voltage")
# plot 4.3
plot(datetime, powerconsumption$Sub_metering_1, type = "line", ylab = "Energy sub metering", xlab = "")
points(datetime, powerconsumption$Sub_metering_2, type = "line", col = "red")
points(datetime, powerconsumption$Sub_metering_3, type = "line", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = 'n')
# plot 4.4
plot(datetime, powerconsumption$Global_reactive_power, type = 'line', ylab = "Global_reactive_power")
dev.off()