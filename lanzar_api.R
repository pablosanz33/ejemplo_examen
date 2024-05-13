library(plumber)
 r<-plumb("API_examen.R")
r$run(port=8008) 

