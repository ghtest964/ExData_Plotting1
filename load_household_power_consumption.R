u <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
dest='exdata_data_household_power_consumption.zip'
file='household_power_consumption.txt'

if( !file.exists(dest) ) {
    download.file(u, dest, method='curl')
}

# Est 2000000*9*8 #144MB

# Only load the data if it is not already there
# various plausibility checks on the household object
if( ! exists( "household") || nrow(household) < 1000 || names(household)[3] != "Global_active_power" ) {
	print("Unzipping household_power_consumption data..")
    unz <- unz(dest,file) 
    household <- read.table(unz,header=TRUE,sep=';',na.strings="?")

    household <-  household[ household$Date == "1/2/2007" | household$Date == "2/2/2007", ] 
    household$DateTime = as.POSIXct(strptime( paste( household$Date, household$Time), '%d/%m/%Y %H:%M:%S'))
    household$Date = as.Date(household$Date,"%d/%m/%Y")
} else {
	print( "Already loaded household_power_consumption data" )
}

