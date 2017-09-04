## Exploratory Data Analysis - Peer-graded Assignment: Course Project 1

In this GIT you will find the R-files for the plots in the assignment and the plots inside the folder figure.
Prerequisite to use the R-files is to have the <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> dataset in your working directory.
I came across a differing output of weekday names in the plots if I didn’t switch my locale to English with the following command:
Sys.setlocale("LC_TIME", "en_US.UTF-8")

Another fun extra bit of work was my first try of getting the right names on the x-axis by not plotting the names on the x-axis at first ( by adding xaxt = 'n' in the plot function ) and afterwards printing the three weekday names manually ( axis(side = 1, at = c(0, nrow(powerconsumption)/2, nrow(powerconsumption)), labels = c("Thu", "Fri", "Sat")) ). Using as.Date() and strptime() as suggested took care of that problem :)