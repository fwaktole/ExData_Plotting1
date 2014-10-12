# 4 - Exploratory Data Analysis Project 1
# file is read by Reading_Data.R (included in this github repo)
# plot4.R constructs the plot4.png plot      
        
  png(filename="plot4.png")
  
  par(mfcol=c(2, 2))   
  
  plot(P_CNSPTN$STRP_TM, P_CNSPTN$Global_active_power, "l", xlab="", ylab="Global Active Power")
  plot(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_1, "l", xlab="", ylab="Energy sub metering")
  lines(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_2, col='red')
  lines(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_3, col='blue')
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")
  plot(P_CNSPTN$STRP_TM, P_CNSPTN$Voltage, xlab='datetime', ylab='Voltage', "l")
  plot(P_CNSPTN$STRP_TM, P_CNSPTN$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', "l")
  dev.off()