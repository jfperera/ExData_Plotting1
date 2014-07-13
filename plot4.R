setwd("~/Documents/ExpDataAnalysis/Assignment1")
household_power_consumption <- read.csv("~/Documents/ExpDataAnalysis/Assignment1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)

## stores the data from just the dates of interest
data<- household_power_consumption[(household_power_consumption[,1] == "1/2/2007") | (household_power_consumption[,1] == "2/2/2007"),]

## converts the date and time variables to Date/Time class
date <-strptime(paste(as.character(data[,1]),as.character(data[,2]), sep = ""), format = "%d/%m/%Y%H:%M:%S")

png(file = "plot4.png")   #launch png graphic device

## set parameters for multiple plots, 2 rows 2 columns
par(mfrow = c(2,2))

#plot 1- global active power over time
plot(date, data[,3], type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")

#plot 2 - Voltage over time
plot(date, data[,5], type = "l", ylab = "Voltage", xlab = "datetime")

#plot 3 - Submetering over time
plot(date, data[,7], type= "l", xlab = "", ylab= "Energy sub metering")
points(date, data[,8], type= "l", col = "red")
points(date, data[,9], type= "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 4 - Global reactive power over time
plot(date, data[,4], type = "l", ylab = "Global_reactive_power", xlab = "datetime")



dev.off()   #closes the png graphic device