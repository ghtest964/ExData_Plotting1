

#Load the data
source("load_household_power_consumption.R")

# Plot a line graph of Global active power over time
png( 'plot2.png', width = 480, height = 480, bg='white' )

plot( Global_active_power ~ DateTime, data=household,
	type="l",
	ylab="Global Active Power (kilowatts)",
	xlab=""
	)

dev.off()

print( "Plot2.png generated" )
