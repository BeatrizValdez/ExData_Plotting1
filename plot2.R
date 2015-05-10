# sourceing basic data working directory 

load("./datos.RData")
# creating the plot

png("plot2.png", width = 480, height = 480)
with(consumptionSubSet, plot(datetime, 
                             Global_active_power, 
                             type='l', 
                             ylab='Global Active Power (kilowatts)', 
                             xlab=""))
dev.off()