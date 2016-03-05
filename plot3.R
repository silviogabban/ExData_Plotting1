# setwd("/home/silvio/cds/exploratory-data-analysis")

source("load_data.R")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(myDays$DateTime, myDays$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(myDays$DateTime, myDays$Sub_metering_2, col = "red")
lines(myDays$DateTime, myDays$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()
