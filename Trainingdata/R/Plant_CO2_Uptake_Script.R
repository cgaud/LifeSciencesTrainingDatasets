load(file = "data/Plant_CO2_Uptake.rda")
#Reads data from data file
Quebec.data <- subset(Plant_CO2_Uptake, Plant_CO2_Uptake$Type == 'Quebec')
Mississippi.data <- subset(Plant_CO2_Uptake, Plant_CO2_Uptake$Type == 'Mississippi')
#Creates data subsets of only those plant types
Quebec.chilled <- subset(Quebec.data, Quebec.data$Treatment == 'chilled')
Quebec.nonchilled <- subset(Quebec.data, Quebec.data$Treatment == 'nonchilled')
Mississippi.chilled <- subset(Mississippi.data, Mississippi.data$Treatment == 'chilled')
Mississippi.nonchilled <- subset(Mississippi.data, Mississippi.data$Treatment == 'nonchilled')
#Further separates the created subsets into smaller subsets dependant on treatment
Quebec.chilled <- Quebec.chilled[order(Quebec.chilled$Plant),]
Quebec.nonchilled <- Quebec.nonchilled[order(Quebec.nonchilled$Plant),]
Mississippi.chilled <- Mississippi.chilled[order(Mississippi.chilled$Plant),]
Mississippi.nonchilled <- Mississippi.nonchilled[order(Mississippi.nonchilled$Plant),]
#Groups these filtered data sets by the plant
par(mar = c(3,3,3,3), mfrow = c(2,2))
#modifies plot margins and display
barplot(Quebec.chilled$uptake, names.arg = Quebec.chilled$Plant, main = 'Quebec chill treatment',cex.names = 0.8, las = 2, ylim = c(0,50), col = 'red')
barplot(Quebec.nonchilled$uptake, names.arg = Quebec.nonchilled$Plant, cex.names = 0.8, las = 2, main = 'Quebec non-chilled treatment', ylim = c(0,50), cex.main = 0.8, col = 'dark red')
barplot(Mississippi.chilled$uptake, names.arg = Mississippi.chilled$Plant, main = 'Mississippi chill treatment',cex.names = 0.8, las = 2, ylim = c(0,50), cex.main = 0.8, col = 'blue')
barplot(Mississippi.nonchilled$uptake, names.arg = Mississippi.nonchilled$Plant, cex.names = 0.8, las = 2, main = 'Mississippi non-chilled treatment', ylim = c(0,50), cex.main = 0.8, col = 'light blue')
#Plots all recorded CO2 uptake for each plant, variation across type and treatment seen
par(mar = c(4,4,1,1), mfrow = c(1,1))
#modifies plot margins
plot(x = Quebec.nonchilled$conc, y = Quebec.nonchilled$uptake, col = 'red', pch = 16, xlab = 'Uptake', ylab = 'Concentration')
points(x = Quebec.chilled$conc, y = Quebec.chilled$uptake, col = 'blue', pch = 16)
points(x = Mississippi.chilled$conc, y = Mississippi.chilled$uptake, col = 'green', pch = 16)
points(x = Mississippi.nonchilled$conc, y = Mississippi.nonchilled$uptake, col = 'orange', pch = 16)
#Plots all the points for concentration against uptake
text(x = Quebec.nonchilled$conc, y = Quebec.nonchilled$uptak, labels = Quebec.nonchilled$Plant, col = 'red', cex = 0.5, pos = 2)
text(x = Quebec.chilled$conc, y = Quebec.chilled$uptake, labels = Quebec.chilled$Plant, col = 'blue', cex = 0.5, pos = 2)
text(x = Mississippi.chilled$conc, y = Mississippi.chilled$uptake, labels = Mississippi.chilled$Plant, col = 'green', cex = 0.5, pos = 2)
text(x = Mississippi.nonchilled$conc, y = Mississippi.nonchilled$uptake, labels = Mississippi.chilled$Plant, col = 'orange', cex = 0.5, pos = 2)
#adds labels to each point for corresponding plant
