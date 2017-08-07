df <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";")
subDF <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subDF$Date, subDF$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subDF$Global_active_power)
png("2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()