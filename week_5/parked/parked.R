########### Load the library
library('readr')
library('tidyverse')

########## Load the song as vector
song <- read_file('lyrics/beatles.txt')

######### Check if vector or not
#is.vector(song)


################ Replace specific character
punct_blank <- "[\"(),]"  # Replace these character
song1 <- gsub(punct_blank, "", song) # replace them with ""

punct_whitespace <-"\n\n" # replace 2 consecutive newline
song2 <- gsub(punct_whitespace, "\n", song1)  # replace with "\n"

punct_whitespace <-"[\n-]" # replace all these characters
song3 <- gsub(punct_whitespace, " ", song2)  # replace with " "


############## Split at " " to make multiple length vector
song4 <- strsplit(song3, split = ' ')  # splitting at white space
song4 <- unlist(song4)                 # flatten a list to make a vector
song5 <- str_to_title(song4)   # convert all the elements of the vector to title


############ Create a data frame to store unique words and counts.
words = unique(song5)  # store all the unique words
counts = c()            # create empty vector

for (i in words) {
  word_count = sum(song5 == i)
counts = c(counts, word_count)
}

df = data.frame(
  word = words,
  count = counts
)


############# Only select words that appear at least 2 times
df <- df |>
  filter(count >= 2) |>
  arrange(desc(count))

# Convert count to factor, to ensure same order in x axis while plotting
df$word <- factor(df$word, levels = df$word)

########### Plot the data frame as column plot and save it.
song_plot <- ggplot(df, aes(x = word, y = count)) +
  geom_col(aes(fill = word), show.legend = FALSE) +
  labs(
    x = 'Words',
    y = 'Counts'
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 0.9, vjust = 0.5))   # to rotate the x ticks by 90 degrees

ggsave(
  'lyrics.png',
  plot = song_plot,
  width = 1200,
  height =900,
  units ='px'
)
