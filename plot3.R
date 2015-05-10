load("./datos.RData")

png("plot3.png", width=480, height=480)
with(consumptionSubSet, plot(datetime, Sub_metering_1, type='l', 
                             col='black', ylab="Energy sub metering",
                             xlab="")) 
with(consumptionSubSet, lines(datetime, Sub_metering_2, col="red"))
with(consumptionSubSet, lines(datetime, Sub_metering_3, col="blue"))
legend("topright",  col=c("black", "red", "blue"),
            c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
            lty=1)

dev.off()