# setwd("/home/silvio/cds/exploratory-data-analysis")

library(httr) 

myUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
myDataFolder <- "data"
if(!file.exists(myDataFolder)){
        dir.create(myDataFolder)
} 
myZipFile <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")
if(!file.exists(myZipFile)){
        download.file(myUrl, myZipFile, method="curl", mode="wb")
}
myFile <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
if(!file.exists(myFile)){
        unzip(myZipFile, list = FALSE, overwrite = FALSE, exdir = myDataFolder)
}
myDaysFile <- paste(getwd(), "/data/mydays.Rdata", sep = "")
if(!file.exists(myDaysFile)){
        myDays <- read.table(myFile, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
        myDays$DateTime <- strptime(paste(myDays$Date, myDays$Time), "%d/%m/%Y %H:%M:%S")
        myDays$Date <- as.Date(myDays$Date, "%d/%m/%Y")
        myDays <- subset(myDays, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
        save(myDays,file=myDaysFile)
} else {
        load(file=myDaysFile)
}