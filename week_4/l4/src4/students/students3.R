# Demonstrates calculating average GPA by major

students <- read.csv("students.csv")

students <- pivot_wider(
  students,
  id_cols = student,
  names_from = attribute,
  values_from = value
)

students$GPA <- as.numeric(students$GPA)

students |>
  group_by(major) |>
  summarize(GPA = mean(GPA))
