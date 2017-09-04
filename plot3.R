# Exploratory Data Analysis - Peer-graded Assignment: Course Project 1
# read file
assignmentfile <- "./household_power_consumption.txt"
powerconsumption <- read.table(assignmentfile, header = T, sep = ";", colClasses = c("character", "character", rep("numeric", 7)), na = "?")
# pick only needed dates
powerconsumption <- subset(powerconsumption, Date == "1/2/2007" | Date == "2/2/2007")
# build datetime variable
datetime <- as.Date(powerconsumption$Date, "%d/%m/%Y")
datetime <- paste(datetime, powerconsumption$Time)
datetime <- strptime(datetime, "%Y-%m-%d %H:%M:%S")
# switch graphics device
png(filename = "plot3.png", width = 480, height = 480)
# plot 3
plot(datetime, powerconsumption$Sub_metering_1, type = "line", ylab = "Energy sub metering", xlab = "")
points(datetime, powerconsumption$Sub_metering_2, type = "line", col = "red")
points(datetime, powerconsumption$Sub_metering_3, type = "line", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
# switch off png graphics device
dev.off()