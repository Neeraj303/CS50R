################################ PART - 3 ######################################

############ stringr package: clean character string  ########################## 

shows <- read.csv('shows.csv')

View(shows)

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))

######################### How to remove white space ############################
# Functions:
# 1. str_trim    : remove white space at either side of character
# 2. str_squish  : remove white space inside the character

shows$show <- str_trim(shows$show)
shows$show <- str_squish(shows$show)

# or
shows$show <- shows$show |>
  str_trim() |> 
  str_squish()

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))


######################### How to standardize the capital #######################
# Functions:
# 1. str_to_lower : convert to lower
# 2. str_to_upper : convert to upper
# 3. str_to_title : 

shows$show <- shows$show |>
  str_trim() |> 
  str_squish() |>
  str_to_title()

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))


########################## How to merge other versions #########################
# Function:
# 1. str_detect : 

shows$show <- shows$show |>
  str_trim() |> 
  str_squish() |>
  str_to_title()

str_detect(shows$show, 'Avatar')

shows$show[str_detect(shows$show, 'Avatar')] <- 'Avatar: The Last Airbender'

shows |>
  group_by(show) |>
  summarize(votes = n()) |>
  ungroup() |>
  arrange(desc(votes))
