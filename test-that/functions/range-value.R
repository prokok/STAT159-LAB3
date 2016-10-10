#' @title Range Value
#' @param x numeric vector
#' @return range as max - min

range_value <- function(x, na.rm='FALSE') {
  
  if(na.rm == 'TRUE')
  {
    x = x[!is.na(x)]
    y = max(x) - min(x)
  }else if(na.rm=='FALSE')
  {
    y= max(x) - min(x)  
  }
  
  return(y)
}