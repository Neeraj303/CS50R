# Reading the file
data <- read.table("tests.tsv", sep="\t", header=TRUE)

# To view the data
#View(data)

#?round()

# Converting the gender
data$gender <- factor(data$gender, label=c("Unanswered", "Male", "Female", "Other"))

# Add extroversion column
data$extroversion <- round((data$E1 + data$E2 + data$E3)/15, digits=2)

# Add neuroticism column
data$neuroticism <- round((data$N1 + data$N2 + data$N3)/15, digits=2)

# Add agreeableness column
data$agreeableness <- round((data$A1 + data$A2 + data$A3)/15, digits=2)

# Add conscientiousness column
data$conscientiousness <- round((data$C1 + data$C2 + data$C3)/15, digits=2)

# Add openness column
data$openness <- round((data$O1 + data$O2 + data$O3)/15, digits=2)


# Write the file
write.csv(data, "analysis.csv", row.names=FALSE)

# Check the file
# df <- read.csv("analysis.csv")
# View(df)
