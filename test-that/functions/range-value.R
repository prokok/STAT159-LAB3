#' @title Range Value
#' @param x numeric vector
#' @return range as max - min

range_value <- function(x, na.rm) {
  x = c(1,2,3,4,5, NA)
  
  if(na.rm == 'TRUE')
  {
    x = x[!is.na(x)]
  }
  elseif(na.rm=='FALSE')
  {
    max(x) - min(x)  
  }

}