average <- function(x) {
  if (any(is.na(x))) {
    warning("'x' contain one or more NA values.")
    return(NA)
  }
    if (!is.numeric(x)) {
    stop('\'x\' must be an numeric vector')  # to alert user with warning
    return(NA)                               # this line is not executed
  }

  sum(x) / length(x)
}