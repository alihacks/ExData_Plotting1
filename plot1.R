# Call script to read data
source("readData.R")

# output to 480x480 file
png("plot1.png", width = 480, height = 480)

# Construct required plot
hist(pow_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# Close Device
dev.off()