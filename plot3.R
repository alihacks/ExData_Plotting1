# Call script to read data
source("readData.R")

# output to 480x480 file
png("plot3.png", width = 480, height = 480)

# Construct required plot
plot(pow_data$DateTime, pow_data$Sub_metering_1, col="black", type = "l", xlab = "", ylab = "Energy sub metering", main = "")
lines(pow_data$DateTime, pow_data$Sub_metering_2, col="red")
lines(pow_data$DateTime, pow_data$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1,1,1))


# Close Device
dev.off()