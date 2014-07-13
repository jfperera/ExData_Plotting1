setwd("~/Documents/ExpDataAnalysis/Assignment1")
household_power_consumption <- read.csv("~/Documents/ExpDataAnalysis/Assignment1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)

## stores the data from just the dates of interest
data<- household_power_consumption[(household_power_consumption[,1] == "1/2/2007") | (household_power_consumption[,1] == "2/2/2007"),]

#converts the date and time columns into a single list using strptime
date <-strptime(paste(as.character(data[,1]),as.character(data[,2]), sep = ""), format = "%d/%m/%Y%H:%M:%S")


png(file = "plot3.png")   #launch png graphic device

plot(date, data[,7], type= "l", xlab = "", ylab= "Energy sub metering")  #initialize plot with Sub_metering 1
points(date, data[,8], type= "l", col = "red")   #add Sub_metering 2 in red
points(date, data[,9], type= "l", col = "blue")   #add Sub_metering 3 in blue
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))  #add legend



dev.off()    #close png graphic device