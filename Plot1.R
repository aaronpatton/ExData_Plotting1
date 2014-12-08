meter <- read.table("subset_household.txt", sep = ";")
meterindex <- sapply(meter$V1, function(x) if(x=="1/2/2007" | x=="2/2/2007") TRUE else FALSE)

meter <- meter[meterindex,]

hist(as.numeric(meter$V3),col="Red",main="Global Active Power",xlab = "Global Active Power (kilowatts)", ylab ="Frequency")

dev.copy(png, file = "Plot1.png")
dev.off()