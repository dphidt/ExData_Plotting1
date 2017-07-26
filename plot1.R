## Plot 1
##
## Create plot 1 from https://github.com/rdpeng/ExData_Plotting1
##
## This is a histogram of the power usage in kilowatts from
## 2/1/07 - 2/2/07 in the UCI dataset "Individual household
## electric power consumption Data Set" [1].
##
## [1] https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
##
## Andrew M., GitHub @dphidt, 2017/07/25

source('utils.R')

# Draw the plot
plot1 <- function(path) {
  d <- loadData(path)

  hist(d$Global_active_power, breaks=seq(0, 8, 0.5), col='black',
       main='Global Active Power', xlab='Global  Active Power (kW)',
       ylim=c(0,1400))
}

# Write the plot to plot1.png
make.plot1 <- function(path='data/household_power_trimmed.txt') {
  png(filename='./plot1.png')
  plot1(path)
  dev.off()
}
