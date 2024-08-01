##############################  PART - 1  ######################################

average <- function(x) {
  sum(x) / length(x)
}


#### What if the user give vector of character
average(c('1', '2', '3'))

# these errors are formally called exceptions. So how to handle this error

###################### message ################################################
average <- function(x) {
  if (!is.numeric(x)) {
    message('\'x\' must be an numeric vector')  # a message is displayed on the screen
    return(NA)                                  # this line is also executed
  }
  sum(x) / length(x)
}

average(c('1', '2', '3'))


############################# warning ##########################################
average <- function(x) {
  if (!is.numeric(x)) {
    warning('\'x\' must be an numeric vector')  # to alert user with warning
    return(NA)                                  # this line is also executed
  }
  sum(x) / length(x)
}

average(c('1', '2', '3'))


##################################### stop #####################################
# the function stops ar the line it encounter it
average <- function(x) {
  if (!is.numeric(x)) {
    stop('\'x\' must be an numeric vector')  # to alert user with warning
    return(NA)                               # this line is not executed
  }
  sum(x) / length(x)
}

average(c('1', '2', '3'))


########## What is the difference between message, cat, print ##################
########### message can suppressed but not others.


#### What if our input have NA
average <- function(x) {
  if (!is.numeric(x)) {
    stop('\'x\' must be an numeric vector')  # to alert user with warning
    return(NA)                               # this line is not executed
  }
  if (any(is.na(x))) {
    warning()
  }
  sum(x) / length(x)
}
