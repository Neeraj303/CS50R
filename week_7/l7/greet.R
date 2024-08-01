library(ducksay)

name <- readline("What is your name? ")
greeting <- ducksay(paste("hello,", name))
cat(greeting)