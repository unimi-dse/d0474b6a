#' Import data from Istat crimes dataset
#'
#' This function returns the italian crimes from 2014 to 2018.
#' Data source: http://dati.istat.it/Index.aspx?DataSetCode=DCCV_DELITTIPS.
#'
#' @return data.frame
#'
#' @export
importData <- function() {
  dataset_df<-read.csv(system.file("data", "crimes.csv", package="crimes"),sep=",")
  return(dataset_df)
}
