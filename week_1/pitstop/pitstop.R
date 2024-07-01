# Prompt the user for the name of the csv file and read it
a = readline("Enter the CSV file: ")
a = read.csv(a)

# to view the csv file
#View(a)

#total number of pit stops
print(paste("Total", nrow(a), "pit stop"))

# names of the columns
colnames(a)

# The duration fo shortest pit stop
print(paste("The shortest pit stop time:", min(a$time), "seconds"))

# The duration of the longest pit stop
print(paste("The longest pit stop time:", max(a$time), "seconds"))

# Total time spent on pit stop during the race, across all racers.
print(paste("The total time spend on pit stops was", sum(a$time), "seconds"))
