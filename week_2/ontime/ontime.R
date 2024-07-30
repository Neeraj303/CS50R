# Load the csv file
bus <- read.csv('bus.csv')
rail <- read.csv('rail.csv')

# To View the data
# View(bus)
# View(rail)

# Column names
# colnames(bus)
# colnames(rail)

# Adding reliability column
bus$reliability <-bus$numerator / bus$denominator
rail$reliability <- rail$numerator /rail$denominator

# merge both data
data <-rbind(bus, rail)
# View(data)
# colnames(data)

# Input from user
route <- readline('Route: ')

if (route %in% unique(data$route)) {
  # Get the index
  peak_index <- which(data$route == route & data$peak == 'PEAK')
  offpeak_index <- which(data$route == route & data$peak == 'OFF_PEAK')

  # Get the mean reliability
  peak_mean <- round(mean(data$reliability[peak_index])* 100, 0)
  offpeak_mean <- round(mean(data$reliability[offpeak_index])* 100, 0)

  # Print the output
  print(paste0('On time ', peak_mean, '% of the time during peak hours'))
  print(paste0('On time ', offpeak_mean, '% of the time during off-peak hours'))
} else {
  print('Please enter valid route')
}

