################################ PART - 1 ######################################

# CRAN comprehensive R archive network gives us packages
# We will focus on tidyverse, include collection of packages which have packages:
# 1. dplyr      : to transform data.
# 2. ggplot2    : visualize data
# 3. stringr    : to work with character string
# 4. tidyr      : tidy our data in the underlying structure

########### To install packages
#install.packages('package_name')
#install.packages('tidyverse')

############### to load packages
#library('package_name') or library(package_name)

library('tidyverse')

# library where different packages are stored.

###############################  dplyr package  ################################
#### Functions included:
# 1. select     : select columns from data frame
# 2. filter     : to filter rows
# 3. arrange    : to sort rows
# 4. distinct   : to find unique rows
# 5. group_by   : to find groups in our data
# 6. summarize  : to summarize our data
#  select, filter, arrange, distinct, group_by, summarize (to select certain row)


storms # the storms data, tibble

#################### How could we remove certain columns. ######################
####################################  select ###################################
dplyr::select(
  storms, 
  !c(lat, long, pressure, tropicalstorm_force_diameter, hurricane_force_diameter)
  ) # use select function from the dplyr package

###### select comes with helper functions:
# 1. contains    :  select all columns that contain given character string.
# 2. ends_With   :  select all columns that ends with given character string.
# 3. starts_With :  select all columns that starts with given character string.

dplyr::select(
  storms, 
  !c(lat, long, pressure, ends_with('diameter'))
)


##################### How to only consider rows with hurricane #################
################################  filter  ######################################

filter(
  select(
    storms, 
    !c(lat, long, pressure, ends_with('diameter'))
  ),
  status == 'hurricane'
)

######### pipe operators:
# 1. |>  : 
# 2. %>% : 

## storms |> select(), storms become the first arguments to the select

storms |> 
  select(!c(lat, long, pressure, ends_with('diameter'))) |>
  filter(status == 'hurricane')

# <chr> : character
# <dbl> : double/float
# <int> : integer
# <fct> : factor


################## How to arrange our data as per rows value ###################
##############################  arrange  #######################################

storms |> 
  select(!c(lat, long, pressure, ends_with('diameter'))) |>
  filter(status == 'hurricane') |>
  arrange(desc(wind)) # by default it sort ascendingly


########### How to sort alphabetically if they have the same wind speed ########

storms |> 
  select(!c(lat, long, pressure, ends_with('diameter'))) |>
  filter(status == 'hurricane') |>
  arrange(desc(wind), name)


#####################  How do we Remove duplicates rows  #######################
##########################  distinct()  ########################################

hurricanes <- storms |> 
  select(!c(lat, long, pressure, ends_with('diameter'))) |>
  filter(status == 'hurricane') |>
  arrange(desc(wind), name) |>
  distinct(name, year, .keep_all = TRUE)# .keep_all to see all the columns, . to distinct from the arguments


######################### How to save into csv file ############################

hurricanes |>
  select(c(year, name, wind)) |>
  write.csv('hurricanes.csv', row.names = FALSE)

################################################################################

hurricanes <- read.csv('hurricanes.csv')
View(hurricanes)

###########################  How to group by years  ############################
################################ group_by ######################################

hurricanes |> 
  group_by(year) |>
  arrange(desc(wind)) |>
  slice_head() # to only select the top value

# 1. slice_head() :  first value in the given group.
# 2. slice_tail() :  last value in the given group.
# 3. slice_max()  :  look into column and give row that have maximum value.
# 4. slice_min()  :  look into column and give row that have minimum value.


# The below gives the same result as above
hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind) # to only select the top value


#################### select only between given years ###########################

hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind) |>
  filter(year >= 1980 & year <= 1990)

################ How to find number of hurricanes in a given year ##############

hurricanes |> 
  group_by(year) |>
  summarize(hurriances = n()) # number of rows in each group

################## How to ungroup #############################################

hurricanes |> 
  group_by(year) |>
  slice_max(order_by = wind) |>
  ungroup()



