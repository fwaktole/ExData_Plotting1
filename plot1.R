# 1 - Exploratory Data Analysis Project 1
# file is read by Reading_Data.R (included in this github repo)
# plot1.R constructs the plot1.png plot 

hist(P_CNSPTN$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png,filename = "plot1.png", width = 480, height = 480)
dev.off()