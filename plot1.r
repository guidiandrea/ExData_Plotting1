df <- read.csv("household_power_consumption.txt", sep=';', header=TRUE, stringsAsFactors = FALSE)
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
df_sub <- subset(df, df$Date=="2007/02/01" | df$Date=="2007/02/02")
df_sub$Global_active_power <- as.numeric(df_sub$Global_active_power)

png(filename="plot1.png",width=480, height=480)
hist(df_sub$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
