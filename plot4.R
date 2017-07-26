## Plot 4
##
## Create plot 4 from https://github.com/rdpeng/ExData_Plotting1
##
## This is a set of plots showing power usage from
## 2/1/07 - 2/2/07 in the UCI dataset "Individual
## household electric power consumption Data Set" [1].
##
## [1] https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
##
## Andrew M., GitHub @dphidt, 2017/07/25

source('utils.R')
source('plot2.R')
source('plot3.R')

# Draw the plot(s) and write to plot4.png
make.plot4 <- function(path='data/household_power_trimmed.txt') {
  d <- loadData(path)
  png(filename='./plot4.png')

  par(mfcol=c(2,2))

  plot2(path)
  plot3(path)
  
  with(d, {
    plot(Voltage~Date, type='l', col='black', ylab='Voltage')
    plot(Global_reactive_power~Date, type='l', col='black',
         ylab='Global_reactive_power')
  })
  
  dev.off()
}
