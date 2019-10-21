df <- read.csv("household_power_consumption.txt", sep=';', header=TRUE, stringsAsFactors = FALSE)
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df_sub <- subset(df, df$Date=="2007/02/01" | df$Date=="2007/02/02")
df_sub$Global_active_power <- as.numeric(df_sub$Global_active_power)
df_sub$Date.Time <- as.POSIXct(paste(df_sub$Date, df_sub$Time), format="%Y-%m-%d %H:%M:%S")

png(filename="plot2.png",width=480, height=480)
plot(df_sub$Date.Time,df_sub$Global_active_power, type='l', ylab="Global Active Power (kilowatts)")
dev.off()
