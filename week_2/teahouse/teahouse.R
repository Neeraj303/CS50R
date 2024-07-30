####################################    PART - 1   #####################################

tea_choice <- data.frame(
  Light = c('Green', 'Chamomile'),
  Bold = c('Black', 'Rooibos'),
  row.names = c('Yes', 'No')
)

flavor_choice <- readline('What flavor do you prefer? ')
caffeine_choice <- readline('Do you prefer Caffeine? ')

if ((flavor_choice %in% colnames(tea_choice)) & (caffeine_choice %in% rownames(tea_choice))) {
  print(paste('We recommend:', tea_choice[caffeine_choice, flavor_choice], 'tea'))
} else {
  print("Please enter correct options")
}



