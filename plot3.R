## Plot 3
##
## Create plot 3 from https://github.com/rdpeng/ExData_Plotting1
##
## This is a set of time series with sub-meter power usage
## from 2/1/07 - 2/2/07 in the UCI dataset "Individual
## household electric power consumption Data Set" [1].
##
## [1] https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
##
## Andrew M., GitHub @dphidt, 2017/07/25

source('utils.R')

# Draw the plot
plot3 <- function(path) {
  d <- loadData(path)

  with(d, {
    plot(Sub_metering_1~Date, type='l', col='black',
         ylab='Energy sub metering', ylim=c(0,40))
    
    lines(Sub_metering_2~Date, type='l', col='red',
          ylab='Energy sub metering', ylim=c(0,40))
    
    lines(Sub_metering_3~Date, type='l', col='blue',
          ylab='Energy sub metering', ylim=c(0,40))
  })
  
  legend('topright', col=c('black', 'red', 'blue'), lty=c(1,1),
         c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
}

# Write the plot to plot3.png
make.plot3 <- function(path='data/household_power_trimmed.txt') {
  png(filename='./plot3.png')
  plot3(path)
  dev.off()
}
