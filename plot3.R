# Course Project 1 - Plot Three

setwd("~/Documents")                ## Set the working directory

## load required packages

library(lubridate)
library(dplyr)
library(tidyr)

## load data
epc_data <- read.table("./data/household_power_consumption.txt", header = TRUE,
                       colClasses = "character", sep = ";")

## Extract data for "1/2/2007" and "2/2/2007"

myData <- epc_data[epc_data$Date == "1/2/2007" | epc_data$Date == "2/2/2007",]

## Remove rows containing "?", change the colClasses to "Date/Time" and "numeric" with appropriate format

hpc_data <- myData %>%
        select(Date:Sub_metering_3) %>%
        filter(Date != "?", Time != "?", Global_active_power != "?", Global_reactive_power != "?",
               Global_intensity != "?", Sub_metering_1 != "?", Sub_metering_2 != "?",
               Sub_metering_3 != "?") %>%
        mutate(Date = dmy(Date),
               Global_active_power = as.numeric(Global_active_power),
               Global_reactive_power = as.numeric(Global_reactive_power),
               Global_intensity = as.numeric(Global_intensity),
               Sub_metering_1 = as.numeric(Sub_metering_1),
               Sub_metering_2 = as.numeric(Sub_metering_2),
               Sub_metering_3 = as.numeric(Sub_metering_3)) %>%
        arrange(Date, Time) %>%
        mutate(Date_Time = as.POSIXct(paste(Date, Time)))

## Create the plot and save

png(filename = "plot3.png", width = 480, height = 480)
par(mfrow = c(1, 1))
with(hpc_data, plot(Date_Time, Sub_metering_1, pch = ".",
                    xlab = "", ylab = "Energy sub metering"))
lines(hpc_data$Date_Time, hpc_data$Sub_metering_1)
lines(hpc_data$Date_Time, hpc_data$Sub_metering_2, col = "red")
lines(hpc_data$Date_Time, hpc_data$Sub_metering_3, col = "blue")
legend("topright", pch = ".", lwd = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Turn off the device

dev.off()
