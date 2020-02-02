
getCrimesByRegion <- function() {
  delitti <- read.csv(".\\data\\delitti.csv", sep = ",") 
  View(delitti)
  delitti_per_regione = aggregate(delitti,
            by = list(delitti$TIME),
            FUN = length )
  View(delitti_per_regione)
}

getCrimesByRegion()
