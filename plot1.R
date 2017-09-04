assignmentfile <- "./household_power_consumption.txt"
powerconsumption <- read.table(assignmentfile, header = T, sep = ";", colClasses = c("character", "character", rep("numeric", 7)), na = "?")
powerconsumption <- subset(powerconsumption, Date == "1/2/2007" | Date == "2/2/2007")
png(filename = "plot1.png", width = 480, height = 480)
hist(powerconsumption$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()