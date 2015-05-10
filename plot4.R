load("./datos.RData")

png("plot4.png", width=480, height=480)

# dividing the graphic device to have two rows and two columns
par(mfrow=c(2,2))
# First plot
with(consumptionSubSet, 
        plot(datetime, Global_active_power,
                type="l",
                ylab="Global Active Power",
                xlab=""))
# second plot
with(consumptionSubSet,
     plot(datetime, Voltage, type="l",
     xlab="datetime", ylab="Voltage"))
# Third plot
with(consumptionSubSet,
        plot(datetime, Sub_metering_1, type="l", 
                col="black",
                ylab="Energy sub metering", xlab=""))
with(consumptionSubSet,
     lines(datetime, Sub_metering_2, col="red"))
with(consumptionSubSet,
     lines(datetime, Sub_metering_3, col="blue"))
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1, box.lwd=0)
# Fourth plot
with(consumptionSubSet,
     plot(datetime, Global_reactive_power, type="l",
         ylab="Global_reactive_power",  xlab="datetime"))

dev.off()