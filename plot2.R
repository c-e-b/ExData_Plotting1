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
png(filename = "plot2.png", width = 480, height = 480)
# plot 2
plot(datetime, powerconsumption$Global_active_power, type = "line", ylab = "Global Active Power (kilowatts)", xlab = "")
# switch off png graphics device
dev.off()