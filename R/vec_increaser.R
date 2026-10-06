vec_increaser <- function(variable, by = 1, times = 1){
  if(any(c("matrix", "array", "factor", "list","data.frame") %in% class(variable))){
    stop("variable to be increased must be a vector", call. = FALSE)
  }

  if(!is.numeric(variable) || !is.numeric(by) || !is.numeric (times)){
    stop("All inputs must be numeric", call. = FALSE)
  }

  if (!(length(by) == 1 || length(by) == length(variable))) {
    stop("by must have length 1 or the same length as variable", call. = FALSE)
  }

  if (length(times) != 1 || is.na(times) || times < 0 || times %% 1 != 0) {
    stop("times must be a single non-negative whole number", call. = FALSE)
  }

  new_variable <- variable + by * times

  return(new_variable)
}
