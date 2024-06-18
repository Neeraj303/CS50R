# Code used to generate sales data

# Define quarters
quarters <- c("Q1", "Q2", "Q3", "Q4")

for (quarter in quarters) {
  # Generate random number of sales
  rows <- sample.int(500, size = 1, replace = FALSE) + 2500
  
  # Generate data
  customer_ids <- sample.int(9000, size = rows, replace = TRUE) + 999
  sale_amounts <- round(rnorm(rows, mean = 50, sd = 25))
  sale_amounts <- ifelse(sale_amounts < 1, 1, sale_amounts)

  # Create data frame
  sales <- data.frame(
    customer_id = customer_ids,
    sale_amount = sale_amounts
  )

  # Write to CSV
  write.csv(sales, paste0(quarter, ".csv"), row.names = FALSE)
}
