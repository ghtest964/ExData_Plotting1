

#Load the data
source("load_household_power_consumption.R")

# Plot 4 charts into the png showing variation of usage over time
png( 'plot4.png', width = 480, height = 480, bg='white' )

par(mfrow=c(2,2))
par(mar=c(4,4,3,1))

# Global Active power
plot( Global_active_power ~ DateTime, data=household,
	type="l",
	ylab="Global Active Power",
	xlab=""
	)

# Voltage
plot( Voltage ~ DateTime, data=household,
	type="l",
	ylab="Voltage",
	xlab="datetime"
	)


# Sub metering
plot( Sub_metering_1 ~ DateTime, data=household,
	col="black",
	type="l",
	ylab="Energy sub metering",
	xlab=""
	)

points( Sub_metering_2 ~ DateTime, data=household,
	col="red",
	type="l"
	)

points( Sub_metering_3 ~ DateTime, data=household,
	col="blue",
	type="l"
	)

legend( "topright", 
	legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
	col = c("black","red","blue"),
	lwd=c(1,1,1),
	bty="n"
	)



# Global Reactive power
plot( Global_reactive_power ~ DateTime, data=household,
	type="l",
	ylab="Global_reactive_power",
	xlab="datetime"
	)

dev.off()

print( "Plot4.png generated" )
