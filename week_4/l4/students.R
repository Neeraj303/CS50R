##############################  Tidy Data  #####################################

# 1. Each observation is a row; each observation is an observation.
# 2. Each variable is a column; each column is an variable.
# 3. Each value is a cell; each cell is a single value.

### Normalizing: Process to make tidy data

students <- read.csv('students.csv')
View(students)

################## tidyr package: helps to tidy our data #######################
#### Functions:
# 1. pivot_wider  : takes columns that have row values that should be column itself.
# 2. pivot_longer : takes columns that should be instead row values 

students <- pivot_wider(
  students,                    # name of data frame
  id_cols = student,           # which column have 1 value for each student.
  names_from = attribute,      # where to get column names 
  values_from = value          # where to get column values from
)

students$GPA <- as.numeric(students$GPA) # to convert character to double

students |>
  group_by(major) |>
  summarize(GPA = mean(GPA))

############# What if certain value are missing for mario ######################

students1 <- students[c(1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), ]
rownames(students1) <- NULL
View(students1)

students1 <- pivot_wider(
  students1,                   # name of data frame
  id_cols = student,           # which column have 1 value for each student.
  names_from = attribute,      # where to get column names 
  values_from = value          # where to get column values from
)

students1 # the missing value consists of NA


