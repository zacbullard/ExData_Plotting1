df <- read.csv("household_power_consumption.txt",header = TRUE,sep = ";")
subDF <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subDF$Global_active_power)
png("1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
