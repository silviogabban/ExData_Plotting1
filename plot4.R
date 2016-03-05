# setwd("/home/silvio/cds/exploratory-data-analysis")

source("load_data.R")

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
plot(myDays$DateTime, myDays$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(myDays$DateTime, myDays$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(myDays$DateTime, myDays$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(myDays$DateTime, myDays$Sub_metering_2, col = "red")
lines(myDays$DateTime, myDays$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
plot(myDays$DateTime, myDays$Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = colnames(myDays)[4])
dev.off()
