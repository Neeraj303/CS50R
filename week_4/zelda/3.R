# Load the tibble
load('zelda.RData')


# Clean the data as per the task defined
zelda <- zelda |>
  group_by(title) |>  # group by the title
  slice_min(year) |>    # only select the oldest year for each title
  arrange(year, title, system)


# Save the tibble
save(zelda, file = '3.RData')
