#NA utilitiest

######################
####### findNas - returns indices in a matrix or array for the NAs
findNAs <- function(df,names=F) {
  return(which(is.na(df),arr.ind=T))
}