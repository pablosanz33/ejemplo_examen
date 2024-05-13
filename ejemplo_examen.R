library(dplyr)
library(readr)
 
df<-read.csv("toughestsport.csv")
 
str(df)
summary(df)
length(unique(df$SPORT))
dim(df)
#primera consulta
df %>% 
  filter(Endurance>8,Strength<6,Flexibility<5) %>% 
  select(SPORT)
#creamos la función
consulta_deporte<-function(df,en=0,st=0,po=0,sp=0,ag=0,
                           fl=0,ne=0,du=0,ha=0,an=0){
  deportes<-df %>% 
    filter(Endurance>en,Strength>st,Power>po,
           Speed>sp,Agility>ag,Flexibility>fl,Nerve>ne,
           Durability>du,Hand.eye.coordination>ha,Analytical.Aptitude>an) %>% 
  select(SPORT)
  return(deportes)
}
consulta_deporte(df,en=6,an=7,du=7)
