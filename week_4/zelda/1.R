# Load the library
library('tidyverse')

# load the csv as tibble
zelda <- read_csv('zelda.csv')


# Tidy the data, using functions in 'tidyr' package
zelda <- pivot_wider(
  zelda,                            # name of data frame
  id_cols = c(title, release),      # which column value should be kept as unique in rows
  names_from = role,                # where to get column names
  values_from = names               # where to get column values from
  ) |>
  separate(                         # to separate the column 'release' into 2 new columns
    release,                        # name of column
    into = c("year", "system"),     # name of the columns after break up
    sep = " - "                       # at what character do we need to break up
  ) |>
  rename_with(tolower)              # used to convert column names to lower-case


# To convert 'year' column to numeric value
zelda$year <-as.numeric(zelda$year)


# Save the tibble
save(zelda, file = 'zelda.RData')


