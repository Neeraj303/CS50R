# Demonstrates flagging sales as high value

Q1 <- read.csv("Q1.csv")
Q1$quarter <- "Q1"

Q2 <- read.csv("Q2.csv")
Q2$quarter <- "Q2"

Q3 <- read.csv("Q3.csv")
Q3$quarter <- "Q3"

Q4 <- read.csv("Q4.csv")
Q4$quarter <- "Q4"

sales <- rbind(Q1, Q2, Q3, Q4)

sales$value <- ifelse(sales$sale_amount > 100, "High Value", "Regular")
