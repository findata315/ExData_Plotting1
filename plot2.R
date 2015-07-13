#for plot 2
png("plot2.png", width = 480, height = 480)
with(power_com, plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "n"))
with(power_com, lines(DateTime, Global_active_power))
dev.off()