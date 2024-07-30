# this is known as file explorer where we can run multiple lines as opposed 
#to R console below where we can run each line


# Console Commands
# dir.create('filename')                       : to create a new directory
# unlink("folder", recursive = TRUE)           : remove all the sub-folder inside the "folder"
# getwd()                                      : to get the current working directory
# setwd('path/to/folder')                      : to change to specific directory
# file.create("filename.R")                    : to create a "filename" R file
# file.rename("helo.R", "hello.R")             : to rename a file 
# file.edit('path/to/file')                    : to open a file and edit
# file.choose()                                : opens the GUI to select file
# file.remove()                                : to remove any file
# source('path/to/file')                       : to run an file in Rconsole
# list.files() or dir()                        : to view the files in the current folder\directory
# ls()                                         : to check all the current objects
# rm(list = ls())                              : to remove all the object
# isntall.packages('name')                     : to install packages 
# library('name')                              : to load the library
# ?files                                       : All commands

#setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) : this sets the directory where your current file is stored

# Key commands
# Ctrl + 2          : to move to Rconsole
# Ctrl + 1          : to move to File editor
# Ctrl + Shift + c  : to comment a selected line
# Ctrl + l          : to clear the Rconsole
# Ctrl + enter      : to run single line of the code. 
# Alt + Shift +K    : to check all the commands
# Ctrl + Shift + S  : to run the whole file without eco
# Ctrl + c          : to stop the command from executing

name <- readline("What is your name? ")
b <- paste("Hello, ", name, sep="")
c <- paste0("Hello, ", name) # this default have sep =""
print(c)
print(b)

# Function Composition
print(paste0("Hello, ", readline("What is your name? ")))
