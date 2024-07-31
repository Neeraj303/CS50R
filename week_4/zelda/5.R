# Load the tibble
load('zelda.RData')


# Clean the data as per the given task
zelda <- zelda |>
  filter(str_detect(producers, ', ')) |>   # to select rows where 'Shigeru Miyamoto' is producer
  group_by(title) |>                   # group by the title
  slice_min(year) |>                   # only select the first release year
  arrange(year, title, system)


# Save the tibble
save(zelda, file = '5.RData')

