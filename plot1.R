load("./datos.RData")

# histogram 'Global acive power & saving this plot

png("plot1.png", width = 480, height = 480)
with(consumptionSubSet, hist(Global_active_power, 
                  main='Global Active Power',
                  xlab='Global Active Power',
                  ylab= 'Frequency', col = 'red'
))
dev.off()