mario <- readline("Enter votes for Mario: ")
peach <- readline("Enter votes for Peach: ")
bowser <- readline("Enter votes for Bowser: ")

mario <- as.integer(mario)
peach <- as.integer(peach)
bowser <- as.integer(bowser)

total <- mario + peach + bowser

print(paste("Total votes:", total))
