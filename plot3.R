#for plot 3
png("plot3.png", width = 480, height = 480)
with(power_com, plot(DateTime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(power_com, lines(DateTime, Sub_metering_1))
with(power_com, lines(DateTime, Sub_metering_2, col = "red"))
with(power_com, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", lty = "solid", col = c("black", "red", "blue"), legend = names(power_com)[6:8])
dev.off()