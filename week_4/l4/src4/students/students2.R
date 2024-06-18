# Demonstrates pivot_wider

students <- read.csv("students.csv")

students <- pivot_wider(
  students,
  id_cols = student,
  names_from = attribute,
  values_from = value
)
