# 1 - Exploratory Data Analysis Project 1
# Reading the data
# set the time to Feburary 1st and 2nd of 2007
# plot plot1.png

setwd("C:/Users/Firew/Desktop/coursera/Exploratory_Data_Analysis")
elec_power_cons<-read.table('household_power_consumption.txt', sep=";", header=TRUE, na.strings = "?", stringsAsFactors=TRUE)
elec_power_cons$DT_Feb<-as.Date(elec_power_cons$Date, "%d/%m/%Y")
P_CNSPTN<-subset(elec_power_cons, DT_Feb==as.Date("2007-02-01") | DT_Feb==as.Date("2007-02-02"))

hist(P_CNSPTN$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png,filename = "plot1.png", width = 480, height = 480)
dev.off()