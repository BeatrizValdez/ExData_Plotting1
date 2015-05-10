# setting working directory
setwd('~/ExData_plotting1')

unzip("./power_consumption.zip", exdir = "./householdPc")

hconsumption <-read.csv("./householdPc/household_power_consumption.txt", 
                                      sep=";", na.strings="?", 
                                      stringsAsFactors=FALSE)

# subsetting to obtain data equal to February 1st and February 2nd, 2007


# adding a new variable: 'datetime' and transforming variable 'Date'
hconsumptio$datetime <- strptime(paste(hconsumption$Date, 
                                    hconsumption$Time), "%d/%m/%Y %H:%M:%S")

hconsumption$date2 <- as.Date(hconsumption$Date, "%d/%m/%Y")

# new subset containing needed variables

require(dplyr)

consumption<- hconsumption %>%
        select(Global_active_power : date2, -Voltage)

#filtering
twoDays <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

consumptionSubSet <- consumption[ which(consumption$date2 %in% twoDays),]






