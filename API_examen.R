#* @apiTitle EXAMEN AJM
#* @apiDescription swager de plumber que tendre que hacer para aprobar el examen

#* @param En resistencia minima requerida
#* @param st fuerza minima requerida
#* @param po potencia minima requerida
#* @param sp velocidad minima requerida
#* @param ag agilidad minima requerida
#* @param fl flexibilidad minima requerida
#* @param Ne capacidad de concentracion minima requerida
#* @param Du aguante minima requerida
#* @param Ha coordinacion minima requerida
#* @param An capacidad analitica  minima requerida
#* /consulta deporte
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