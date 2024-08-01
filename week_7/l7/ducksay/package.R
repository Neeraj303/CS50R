########################## Packaging Program ###################################
# we will write code to make ducksay similar to cowsay

# how to make a package
# when we download package from CRAN, we get single binary file. 
# Source code

# we write source code for some package inside folder that have package name

# A package in R would have these following things:
# 1. DESCRIPTION: describe your package, version number, who wrote it.
# 2. NAMESPACE: function in your package that end user would be able to use it.
### some folders:
  # 3. man/   :  manual, documentation of function how to use them
  # 4. R/     :  place .R file to put your function definition.
  # 5. tests/ :  for test


###############################  DESCRIPTION  ##################################
# consists of fields:
# 1. package
# 2. Title
# 3. Description
# 4. Version
# 5. Authors@R   :  aut(author), cre(creator, who maintain it), cph(copy right holder)
# 6. License     : MIT, GPL3 FOSS(free and open source software), you also add license
    # YEAR
    # COPYRIGHT HOLDER

######## Semantic Versioning (SemVer): 
# MAJOR.MINOR.PATCH
# PATCH: increment when you make bug fix
# MINOR: increment when you add new feature/function
# MAJOR: increment when you made change that broke the convention you prior used.


###### devtools: package to help us write our own package, library(devtools)
# Function:
# 1. use_testthat
# 2. use_test
# 3. test

##### Use these commands
# library(devtools)
# use_testthat()
# the above both commands adds new field into DESCRIPTION, it also create folder
# named 'tests' that consists of testthat.R and subfolder 'testthat' to write 
# unit tests

# use_test("ducksay")   (command)
      # output:
      #✔ Writing tests/testthat/test-ducksay.R.
      #☐ Modify tests/testthat/test-ducksay.R.

# edit the file 'test-ducksay.R' generated
# function: expect_output()m expect_match()


##### where to write the function, we write all .R file inside folder 'R'
# we use devtools function:
# 1. use_r : use_r('ducksay'), create R folder with 'ducksay.R'

##### Now define function in NAMESPACE
# export(): take a function i defined and give to the users who installed
load_all() #(inRconsole) : whatever function i export i want to use them
cat(ducksay())
test()

#### Now we write documentation for our function in man/, consists .Rd (r documentation), we write markup language
# \title{...}
# \description{...}
# \usage{...}

dir.create("man")
file.create("man/ducksay.Rd")

file.edit("man/ducksay.Rd")


###########################  BUILDING PACKAGES  ################################
## We want to package up and share with others, source code to single file.
# Functions:
# 1. build       : work in RConsole
# 2. R CMD build : work in terminal

build() # this createas a tarball

# after making updates
load_all()
cat(ducksay('quack!'))
test()

# now update the documentation (ducksay.Rd)
?ducksay

# now we rebuild
build()

setwd("..")

file.edit("greet.R")

# but we need to install this package that we have created
#R CMD INSTALL
install.packages("ducksay_1.0.tar.gz")

# How to share with others
#1. github
#2, CRAN