## Plot 2
##
## Create plot 2 from https://github.com/rdpeng/ExData_Plotting1
##
## This is a time series of the global active power usage
## in kilowatts from 2/1/07 - 2/2/07 in the UCI dataset
## "Individual household electric power consumption Data
## Set" [1].
##
## [1] https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
##
## Andrew M., GitHub @dphidt, 2017/07/25

source('utils.R')

# Draw the plot
plot2 <- function(path) {
  d <- loadData(path)
  with(d, plot(Global_active_power~Date, type='l', col='black',
               ylab='Global Active Power (kW)', ylim=c(0,8)))
}

# Write the plot to plot2.png
make.plot2 <- function(path='data/household_power_trimmed.txt') {
  png(filename='./plot2.png')
  plot2(path)
  dev.off()
}


