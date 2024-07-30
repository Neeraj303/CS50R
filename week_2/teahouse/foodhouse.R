####################################    PART - 2   #####################################
veg_food_choice <- data.frame(
  Breakfast = c('Masala Dosa' , 'Idli & Vada'),
  Lunch = c('Schezwan Rice','North Thali' ),
  Snacks = c('Vada Pav', 'Khara Bath'),
  Dinner = c('Kadai Panner & Naan', 'Panner Butter Masala & Naan'),
  row.names = c('Yes', 'No')
)

food_pref <- readline('Do you prefer Veg or Non-Veg? ')
meal_pref <- readline('Do you prefer Breakfast/Lunch/Snacks/Dinner? ')
spicy_pref <- readline('Would you prefer spicy food? ')

if (food_pref == 'Veg') {
  if (((meal_pref) %in% colnames(veg_food_choice)) & ((spicy_pref) %in% rownames(veg_food_choice))) {
    print(paste('We would suggest:', veg_food_choice[spicy_pref, meal_pref]))
  } else {
    print('Sorry we dont serve that, would you like something else?')
  }
} else {
  print('Sorry, We only serve Veg food')
}