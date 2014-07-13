setwd("~/Documents/ExpDataAnalysis/Assignment1")
household_power_consumption <- read.csv("~/Documents/ExpDataAnalysis/Assignment1/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE)

## stores the data from just the dates of interest
data<- household_power_consumption[(household_power_consumption[,1] == "1/2/2007") | (household_power_consumption[,1] == "2/2/2007"),]


png(file = "plot1.png")   #launch png graphic device
hist(as.numeric(data[,3]), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")

dev.off()       #closes png graphic device