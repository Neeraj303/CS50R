# Load the libraries
library('tidyverse')

zelda <-read_csv('zelda.csv')

zelda
View(zelda[1:10,])

unique(zelda$role)
