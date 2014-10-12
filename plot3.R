# 3 - Exploratory Data Analysis Project 1
# file is read by Reading_Data.R (included in this github repo)
# plot3.R constructs the plot3.png plot 

  png(filename="plot3.png")
  
  plot(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_1, "l", xlab="", ylab="Energy sub metering")
  lines(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_2, col='red')
  lines(P_CNSPTN$STRP_TM, P_CNSPTN$Sub_metering_3, col='blue')
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.copy(png,filename = "plot3.png", width = 480, height = 480)
  
  dev.off()
