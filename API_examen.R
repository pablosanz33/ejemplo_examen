#* @apiTitle Examen GEB
#* @apiDescription Swager de plumber que tendré que hacer para aprobar el examen

#*@param En Resistencia mínima requerida
#*@param St Fuerza minima requerida
#*@param Po Potencia minima requerida
#*@param Sp Velocidad minima requerida
#*@param Ag Agilidad minima requerida
#*@param Fl Flexibilidad minima requerida
#*@param Ne Capacidad de concentracion minima requerida
#*@param Du Aguante minima requerida
#*@param Ha Coordinacion ojo mano minima requerida
#*@param An Capacidad analitica minima requerida
#* @get /consulta_deporte
consulta_deporte <- function(En, St, Po, Sp, Ag, 
                             Fl, Ne, Du, Ha, An){
  df <- read_csv("toughestsport.csv")
  
  deportes <- df %>% filter(Endurance > En, Strength > St,
                            Power > Po, Speed > Sp, Agility > Ag,
                            Flexibility > Fl, Nerve > Ne, Durability > Du,
                            `Hand-eye coordination` > Ha, `Analytical Aptitude` > An) %>% 
    select(SPORT)
  return(deportes)
}
