# Read dataset from file 
pow_data = read.csv("household_power_consumption.txt", sep = ";", na.strings = c("?"))

# Filter by date as a string first since this is faster
pow_data = subset(pow_data, Date %in% c("1/2/2007","2/2/2007"))

# Combine Date and Time into DateT field
pow_data$DateTime = strptime(paste(pow_data$Date, pow_data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

# head(pow_data)