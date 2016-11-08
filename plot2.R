# Call script to read data
source("readData.R")

# output to 480x480 file
png("plot2.png", width = 480, height = 480)

# Construct required plot
plot(pow_data$DateTime, pow_data$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)", main = "")

# Close Device
dev.off()