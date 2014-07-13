setwd("~/Documents/ExpDataAnalysis/Assignment1")
household_power_consumption <- read.csv("~/Documents/ExpDataAnalysis/Assignment1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)

## stores the data from just the dates of interest
data<- household_power_consumption[(household_power_consumption[,1] == "1/2/2007") | (household_power_consumption[,1] == "2/2/2007"),]

#converts the date and time columns into a single list using strptime
date <-strptime(paste(as.character(data[,1]),as.character(data[,2]), sep = ""), format = "%d/%m/%Y%H:%M:%S")


png(file = "plot2.png")   #launch png graphic device

plot(date, data[,3], type = 'l', ylab = "Global Active Power (kilowatts)", xlab = "")


dev.off()   #close png graphic device