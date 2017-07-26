## Utilities.
##
## Utility functions related to plot plotting.
##
## Andrew M., GitHub @dphidt, 2017/07/25

loadData <- function(path='data/household_power_trimmed.txt') {
  d <- read.table(path, header=T, sep=';', na.strings='?')
  
  # Convert dates & times to a single POSIXct in Date
  d$Date <- as.POSIXct(paste(d$Date, d$Time), format="%d/%m/%Y %H:%M:%S")
  d <- subset(d, select=-Time)
  
  d
}
