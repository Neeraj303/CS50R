# Combines data frames with `rbind`

Q1 <- read.csv("Q1.csv")
Q2 <- read.csv("Q2.csv")
Q3 <- read.csv("Q3.csv")
Q4 <- read.csv("Q4.csv")

sales <- rbind(Q1, Q2, Q3, Q4)
