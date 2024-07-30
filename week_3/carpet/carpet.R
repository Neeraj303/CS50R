calculate_growth_rate <- function(years, visitors) {

  # Find the index of latest and first year
  latest_yr_idx <- which(years == max(years)) # Latest year index
  first_yr_idx <- which(years == min(years)) # First year index

  total_visitors <- visitors[latest_yr_idx] -visitors[first_yr_idx]
  total_years <- years[latest_yr_idx] -years[first_yr_idx]

  avg_growth = total_visitors /total_years
  return(avg_growth)
}

predict_visitors <- function(years, visitors, year) {

  latest_yr_idx <- which(years == max(years)) # to find the latest year index
  latest_yr <- years[latest_yr_idx] #latest year
  latest_visitors <- visitors[latest_yr_idx] # latest year visitor

  predicted_visitors <- latest_visitors + (year - latest_yr) * calculate_growth_rate(years, visitors)
  return(predicted_visitors)
}

# Load the csv file
visitors <- read.csv("visitors.csv")

# Input from the user
year <- as.integer(readline("Year: "))


predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
