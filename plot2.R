# 2 - Exploratory Data Analysis Project 1
# file is read by Reading_Data.R (included in this github repo)
# plot2.R constructs the plot2.png plot 

plot(P_CNSPTN$STRP_TM, P_CNSPTN$Global_active_power, "l", xlab="", ylab="Global Active Power(kilowatts)") 
dev.copy(png,filename = "plot2.png", width = 480, height = 480)
dev.off()