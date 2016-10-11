#' @title center measure
#' @param x a numeric vector
#' @return a numeric vector with median and mean
center_measures = function(x) {
  out = c(mean(x),median(x))
  return(out)
}

#' @title variability measure
#' @param x a numeric vector
#' @return a numeric vector with range, iqr, and stdev
spread_measures = function(x){
  out = c((max(x)-min(x)), IQR(x), sd(x))
  return(out)
}

#' @title descriptive statistics
#' @param x a numeric vector with NAs.
#' @return a numeric vector with median, mean, range, iqr, stdev, and number of missing values 
#' after removing missing values
descriptive_stats = function(x){
  out = c(median(x, na.rm = 1), mean(x, na.rm = 1), (max(x, na.rm = 1)-min(x, na.rm = 1)),
          IQR(x, na.rm = 1), sd(x, na.rm = 1), sum(is.na(x)))
  return(out)
}

