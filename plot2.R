# setwd("/home/silvio/cds/exploratory-data-analysis")

source("load_data.R")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(myDays$DateTime, myDays$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
