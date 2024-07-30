# Loading the csv files
authors <- read.csv('authors.csv')
books <- read.csv('books.csv')

# To view the structure of the csv files
View(authors)
View(books)

# name of the columns
colnames(authors)
colnames(books)


# The Writer
writer_index = which(books$author == 'Mia Morgan')
print(paste('The title of the Book:', books$title[36]))


# The Musician
musician_index = which(books$year == 1613 & books$topic == 'Music')
print(paste('The title of the Book:', books$title[musician_index]))


# The Traveler
traveler_index = which((books$author == 'Lysandra Silverleaf' | books$author == 'Elena Petrova') & books$year == 1775)
print(paste('The title of the Book:', books$title[traveler_index]))


# The Painter
painter_index = which((books$year != 1991) & (books$year == 1990 | books$year == 1992) & (books$pages >= 200 & books$pages <= 300))
print(paste('The title of the Book:', books$title[painter_index]))


# The Scientist
scientist_index = which(grepl('Quantum Mechanics', books$title))
print(paste('The title of the Book:', books$title[scientist_index]))


# The Teacher
author_index = which(authors$hometown == 'Zenthia')

author_name = authors$author[author_index]

teacher_index = which((books$author %in% author_name) & (books$topic == 'Education') & (books$year > 1700))

print(paste("The title of the Book:", books$title[teacher_index]))
