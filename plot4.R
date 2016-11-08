# Call script to read data
source("readData.R")

# output to 480x480 file
png("plot4.png", width = 480, height = 480)

# Setup plot grid
par(mfrow = c(2, 2))

# Global Active
plot(pow_data$DateTime, pow_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", main = "")

# Voltage 
plot(pow_data$DateTime, pow_data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", main = "")

# 3 Metering graphs
plot(pow_data$DateTime, pow_data$Sub_metering_1, col="black", type = "l", xlab = "", ylab = "Energy sub metering", main = "")
lines(pow_data$DateTime, pow_data$Sub_metering_2, col="red")
lines(pow_data$DateTime, pow_data$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n")

# Global Reactive
plot(pow_data$DateTime, pow_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", main = "")

# Close Device
dev.off()