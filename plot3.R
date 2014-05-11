

#Load the data
source("load_household_power_consumption.R")

# Plot a line graph of Sub metering over time
png( 'plot3.png', width = 480, height = 480, bg='white' )

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
	lwd=c(1,1,1)
	)

dev.off()

print( "Plot3.png generated" )
