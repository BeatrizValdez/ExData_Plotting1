# changing working directory 
setwd('~/ExData_plotting1')

# to quick the loading process of the dataset, we have previously saved it 
# along with the workspace. Loading the workspace with the dataset
load('datos.RData')
# subsetting to obtain data equal to February 1st and February 2nd, 2007
require(tidyr)
require(dplyr)

# getting the sub-dataset
sconsumptionSubSet <-slice(consumption,  66637:69516)

# adding variable datetime
require(magrittr)
consumptionSubSet %<>% mutate(datetime = paste(Date, Time))
