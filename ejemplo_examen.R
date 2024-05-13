library(dplyr)
library(readr)
 
df<-read.csv("toughestsport.csv")
 
str(df)
summary(df)
length(unique(df$SPORT))
dim(df)
