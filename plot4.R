#for plot 4
png("plot4.png", width = 480, height = 480)
par(mfcol = c(2, 2))

#topleft plot
with(power_com, plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "n"))
with(power_com, lines(DateTime, Global_active_power))

#bottomleft plot
with(power_com, plot(DateTime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(power_com, lines(DateTime, Sub_metering_1))
with(power_com, lines(DateTime, Sub_metering_2, col = "red"))
with(power_com, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", col = c("black", "red", "blue"), legend = names(power_com)[6:8], bty = "n")

#topright plot
with(power_com, plot(DateTime, Voltage, type = "n", xlab = "datetime"))
with(power_com, lines(DateTime, Voltage))

#bottomright plot
with(power_com, plot(DateTime, Global_reactive_power, type = "n", xlab = "datetime"))
with(power_com, lines(DateTime, Global_reactive_power))

dev.off()