
#Load the data
source("load_household_power_consumption.R")

# Plot a histogram of Global active power
png( 'plot1.png', width = 480, height = 480, bg='white' )

hist( household$Global_active_power, col="red",
	xlab="Global Active Power (kilowatts)",
	ylab="Frequency",
	main="Global Active Power"
	)

dev.off()

print( "Plot1.png generated" )
