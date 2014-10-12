# Reading the data
# set the time to Feburary 1st and 2nd of 2007
# stripping the time

setwd("C:/Users/Firew/Desktop/coursera/Exploratory_Data_Analysis")
elec_power_cons<-read.table('household_power_consumption.txt', sep=";", header=TRUE, na.strings = "?", stringsAsFactors=TRUE)
elec_power_cons$DT_Feb<-as.Date(elec_power_cons$Date, "%d/%m/%Y")
P_CNSPTN<-subset(elec_power_cons, DT_Feb==as.Date("2007-02-01") | DT_Feb==as.Date("2007-02-02"))

P_CNSPTN$STRP_TM1<-paste(P_CNSPTN$Date, P_CNSPTN$Time, sep=",")
P_CNSPTN$STRP_TM<-strptime(P_CNSPTN$STRP_TM1, "%d/%m/%Y,%H:%M:%S")  