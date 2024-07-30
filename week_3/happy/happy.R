load_csv <- function(filename) {
  # Function to load all the csv file into single data frame

  # Declare an empty data frame
  data <- data.frame()

  for (file in filename) {
  year_data <- read.csv(file)
  year_data$score <- round(apply(year_data[, 2:8], MARGIN = 1, FUN = sum), 2)
  year_data$year = substr(file, 1, 4)
  data <- rbind(data, year_data)
  }

  return(data)
}

country_result <- function(country_name, data) {
  #Function to print the result of the selected country

  if (country_name %in% unique(data$country)) {

  # Select the subset of data frame
  country_data <- subset(data, country == country_name)

  # Format to print the result
  formatted_result <- paste0(country_data$country, ' (', country_data$year, '): ', country_data$score)

  # Print the result
  cat(formatted_result, sep='\n')
  } else {

  # Format to print the result
  formatted_result <- paste0(rep(country_name, times = 5), ' (', unique(data$year), '): ', rep('data unavailable', times = 5))

  # Print the result
  cat(formatted_result, sep='\n')
  }
}

# Name of the csv files
csv_files <- c('2020.csv', '2021.csv', '2022.csv', '2023.csv','2024.csv')

# Load all the csv file
data <- load_csv(csv_files)

# Take input from user
country <- readline('Country: ')

# Print the result
country_result(country, data)


