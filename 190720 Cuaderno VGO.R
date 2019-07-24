# Nombre del proyecto :  CUADERNO DE AUTOINDUCCI?N - R y Estad?sticas /B?SICO                                                                            
# 
# Quien crea          :  VGO                                   Fecha: 23jul2019                                                                     
# Quien revisa        :                                        Fecha:                                                                             
# Quien replica       :                                        Fecha:                                                                      
# 
# 
# Objetivos           :                                                                                                                           
# 

#PRUEBAAAAAA



#FUNCIONAAAA


# Pasos               : 0) RECURSOS.
#                         0.1)  DESCARGAR LIBRERIAS. 
#                         0.2)  CARGAR LIBRERIAS. 
#                         0.3)  CARGAR TABLAS.
#                             0.3.1)  EPI.BFI     (PERSONALIDAD)  - PRINCIPAL A.
#                             0.3.2)  ALUMNOS2012 (ESTUDIO2012)   - PRINCIPAL B.
#                       1) PROCESOS
#                         1.1)  CREAR TABLA PARA CADA CONSTRUCTO CUANTITATIVO. 
#                             1.1.1)  CREAR EN TABLA VARIABLE PROMEDIO DE CONSTRUCTO.
#                             1.1.2)  CREAR EN TABLA PRINCIPAL VARIABLE PROMEDIO DE CONSTRUCTO.
#                         1.2)  ETIQUETAR VARIABLES NOMINALES EN TABLA PRINCIPAL.
#                         1.3)  CORRELACI?N.
#                             1.3.1)  CORRELACI?N ENTRE ?TEMS DEL MISMO CONSTRUCTO.
#                             1.3.2)  ALFA DE CRONBACH PARA VARIABLES DEL MISMO CONSTRUCTO.
#                         1.4)  REGRESIONES.
#                         1.5)  ANALISIS FACTORIAL.
#                             1.5.1)  AN?LISIS FACTORIAL PARA INDICADORES CUANTITATIVOS.
#                             1.5.2)  AN?LISIS FACTORIAL PARA CONJUNTOS DE MAS DE 1 FACTOR.
#                       2)      
# 
#                       3)                                                                                                   
# 
# 
# Producto            :                                                                                                                           
# Chequeos realizados :   
#   

#INSTALACI?N DE LIBRER?AS#

# install.packages("psych")
# install.packages("lattice")
# install.packages("lawstat")
# install.packages("ppcor")
# install.packages("QuantPsyc")

#ACTIVACI?N DE LIBRER?AS#

library(psych)
library(lattice)
library (lawstat)
library(ppcor)   
library(QuantPsyc)

#CARGAR BASES DE DATO PRINCIPALES#


personalidad <- epi.bfi                                         #TABLA PRINCIPAL (A)

estudio2012  <- data.frame(read.csv(file.choose(),              #TABLA PRINCIPAL (B)
                header = TRUE,
                sep = ";")) 


#CREAR BASE DE DATOS PARA CADA CATEGORIA# SOLO TABLA PRINCIPAL (B)          DUDA: ?c?MO HAGO QUE LA BASE DE DATOS ELIMINE LOS N.A?

# PRINCIPAL B

desconfianza                  <- with(estudio2012,
                                      data.frame(desconf1,desconf2,desconf3,desconf4,desconf5))
vidauniversitaria             <- with(estudio2012,
                                      data.frame(vidau1,vidau2,vidau3,vidau4,vidau5))
acogidaextranjeros            <- with(estudio2012,
                                      data.frame(acogex1,acogex2,acogex3,acogex4,acogex5))
ansiedad                      <- with(estudio2012,
                                      data.frame(ansev1,ansev2,ansev3,ansev4,ansev5))
starbucks                     <- with(estudio2012,
                                      data.frame(starb1,starb2,starb3,starb4,starb5))
insomnio                      <- with(estudio2012,
                                      data.frame(insom1,insom2,insom3,insom4,insom5))
ayudar                        <- with(estudio2012,
                                      data.frame(ayude1,ayude2,ayude3,ayude4,ayude5))
intuici?n                     <- with(estudio2012,
                                      data.frame(intui1,intui2,intui3,intui4,intui5))
intenci?ndeayudar             <- with(estudio2012,
                                      data.frame(intay1,intay2,intay3,intay4,intay5))
estr?s                        <- with(estudio2012,
                                      data.frame(streu1,streu2,streu3,streu4,streu5))
aborto                        <- with(estudio2012,
                                data.frame(abor1,abor2,abor3,abor4,abor5))
valormedioambiental           <- with(estudio2012,
                                      data.frame(valma1,valma2,valma3,valma4,valma5))
toleranciasexual              <- with(estudio2012,
                                      data.frame(tolsex1,tolsex2,tolsex3,tolsex4,tolsex5))
toleraprejuicios              <- with(estudio2012,
                                      data.frame(tprej1,tprej2,tprej3,tprej4,tprej5))
intercambioext                <- with(estudio2012,
                                      data.frame(intex1,intex2,intex3,intex4,intex5))


# PROMEDIOS DE CADA INDICADOR POR CATEGORIAS -TABLA PROPIA #

# desconfianza$desconf          <- with(estudio2012,
#                                       (desconf1+desconf2+desconf3+desconf4+desconf5)/5)
# vidauniversitaria$vidau       <- with(estudio2012,
#                                       (vidau1+vidau2+vidau3+vidau4+vidau5)/5)
# acogidaextranjeros$acogex     <- with(estudio2012,
#                                       (acogex1+acogex2+acogex3+acogex4+acogex5)/5)
# ansiedad$ansev                <- with(estudio2012,
#                                       (ansev1+ansev2+ansev3+ansev4+ansev5)/5)
# starbucks$starb               <- with(estudio2012,
#                                       (starb1+starb2+starb3+starb4+starb5)/5)
# insomnio$insom                <- with(estudio2012,
#                                       (insom1+insom2+insom3+insom4+insom5)/5)
# ayudar$ayude                  <- with(estudio2012,
#                                       (ayude1+ayude2+ayude3+ayude4+ayude5)/5)
# intuici?n$intui               <- with(estudio2012,
#                                       (intui1+intui2+intui3+intui4+intui5)/5)
# intenci?ndeayudar$intay       <- with(estudio2012,
#                                       (intay1+intay2+intay3+intay4+intay5)/5)
# estr?s$streu                  <- with(estudio2012,
#                                       (streu1+streu2+streu3+streu4+streu5)/5)
# aborto$abor                   <- with(estudio2012,
#                                       (abor1+abor2+abor3+abor4+abor5)/5)
# valormedioambiental$valm      <- with(estudio2012,
#                                       (valma1+valma2+valma3+valma4+valma5)/5)
# toleranciasexual$tolse        <- with(estudio2012,
#                                       (tolsex1+tolsex2+tolsex3+tolsex4+tolsex5)/5)
# toleraprejuicios$tprej        <- with(estudio2012,
#                                       (tprej1+tprej2+tprej3+tprej4+tprej5)/5)
# intercambioext$intex            <- with(estudio2012,
#                                         (intex1+intex2+intex3+intex4+intex5)/5)

#CREAR VARIABLE PROMEDIO PARA CADA CATEGORIA -TABLA PRINCIPAL (A)#

estudio2012$desconf                 <- with(estudio2012,
                                            (desconf1+desconf2+desconf3+desconf4+desconf5)/5)
estudio2012$vidau                   <- with(estudio2012,
                                            (vidau1+vidau2+vidau3+vidau4+vidau5)/5)
estudio2012$acogex                  <- with(estudio2012,
                                            (acogex1+acogex2+acogex3+acogex4+acogex5)/5)
estudio2012$ansev                   <- with(estudio2012,
                                            (ansev1+ansev2+ansev3+ansev4+ansev5)/5)
estudio2012$starb                   <- with(estudio2012,
                                            (starb1+starb2+starb3+starb4+starb5)/5)
estudio2012$insom                   <- with(estudio2012,
                                            (insom1+insom2+insom3+insom4+insom5)/5)
estudio2012$ayude                   <- with(estudio2012,
                                            (ayude1+ayude2+ayude3+ayude4+ayude5)/5)
estudio2012$intui                   <- with(estudio2012,
                                            (intui1+intui2+intui3+intui4+intui5)/5)
estudio2012$intay                   <- with(estudio2012,
                                            (intay1+intay2+intay3+intay4+intay5)/5)
estudio2012$streu                   <- with(estudio2012,
                                            (streu1+streu2+streu3+streu4+streu5)/5)
estudio2012$abor                    <- with(estudio2012,
                                            (abor1+abor2+abor3+abor4+abor5)/5)
estudio2012$valma                   <- with(estudio2012,
                                            (valma1+valma2+valma3+valma4+valma5)/5)
estudio2012$tolse                   <- with(estudio2012,
                                            (tolsex1+tolsex2+tolsex3+tolsex4+tolsex5)/5)
estudio2012$tprej                   <- with(estudio2012,
                                            (tprej1+tprej2+tprej3+tprej4+tprej5)/5)
estudio2012$intex                   <- with(estudio2012,
                                            (intex1+intex2+intex3+intex4+intex5)/5)

#ETIQUETAR CADA VARIABLE NOMINAL# 

estudio2012$sitsent = factor(estudio2012$sitsent,
                             levels=c("En una relaci?n","Soltero/a","Es complicado"),
                             labels=c("En una relaci?n","Soltero/a","Es complicado"))

estudio2012$genero = factor(estudio2012$genero,
                             levels=c("Femenino","Masculino"),
                             labels=c("Mujer","Hombre"))

estudio2012$zodiaco = factor(estudio2012$zodiaco,
                              levels=c("Aries (21 Marzo - 20 Abril)",
                                        "Tauro (21 Abril - 20 Mayo)",
                                        "G?minis (21 Mayo - 20 Junio)", 
                                        "C?ncer (21 Junio - 22 Julio)",
                                        "Leo (23 Julio - 22 Agosto)", 
                                        "Virgo (23 Agosto - 22 Septiembre)",
                                        "Libra (23 Septiembre - 23 Octubre)",
                                        "Escorpi?n (24 Octubre - 21 Noviembre)",
                                        "Sagitario (22 Noviembre - 21 Diciembre)",
                                        "Acuario (21 Enero - 19 Febrero)",
                                        "Piscis (20 Febrero - 20 Marzo)"),
                              labels=c("Aries","Tauro","G?minis","C?ncer",
                                        "Leo","Virgo","Libra", "Escorpi?n", 
                                        "Sagitario","Acuario","piscis"))

estudio2012$orienpol = factor(estudio2012$orienpol,
                              levels=c("Izquierda","Centro Izquierda","Centro",
                                       "Centro Derecha","Derecha"))

estudio2012$mencion = factor(estudio2012$mencion,
                             levels=c("Cl?nica","Comunitaria","De la salud", 
                                      "Educacional", 
                                      "Laboral/Organizacional"))
                

estudio2012$votop = factor(estudio2012$votop,
                          levels=c("S?","No","Era menor de edad"))

estudio2012$lugar = factor(estudio2012$lugar,
                           levels = c("Soy el hermano/la hermana del medio", 
                                      "Soy el hermano/la hermana mayor", "Soy el hermano/la hermana menor",
                                      "Soy hijo/a ?nico"))


############################################################
#Analisis de correlaci?n entre items de un mismo constructo

#
round(cor(aborto, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(acogidaextranjeros,
          use = "pairwise.complete.obs"),
      2)
#
round(cor(ansiedad, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(ayudar, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(estr?s, 
          use = "pairwise.complete.obs"), 
      2) 
#
round(cor(desconfianza, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(insomnio,
          use = "pairwise.complete.obs"),
      2)
#
round(cor(intenci?ndeayudar,
          use = "pairwise.complete.obs"),
      2)
#
round(cor(intercambioext, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(intuici?n, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(starbucks, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(toleranciasexual, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(toleraprejuicios, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(valormedioambiental, 
          use = "pairwise.complete.obs"),
      2)
#
round(cor(vidauniversitaria, 
          use = "pairwise.complete.obs"),
      2)


# ALFA DE CRONBACH PARA VARIABLES QUE MIDEN MISMO CONSTRUCTO #


alpha(aborto,
      check.keys = TRUE)
# #alpha(with(aborto,
#            cbind(abor1,abor2,abor3,abor4)),
#       check.keys = TRUE)

alpha(acogidaextranjeros,
      check.keys = TRUE)
# alpha(with(acogidaextranjeros,
#             cbind(acogex1,acogex2,acogex3,acogex4,acogex5)),
#       check.keys = TRUE)
#

alpha(ansiedad,
      check.keys = TRUE)
# alpha(with(ansiedad,
#             cbind(ansev1,ansev2,ansev3,ansev4,ansev5)),
#       check.keys = TRUE)


alpha(ayudar,
      check.keys = TRUE)
# alpha(with(ayudar,
#             cbind(ayude1,ayude2,ayude3,ayude4,ayude5)),
#       check.keys = TRUE)


alpha(desconfianza,
      check.keys = TRUE)
# alpha(with(desconfianza,
#             cbind(desconf1,desconf2,desconf3,desconf4,desconf5)),
#       check.keys = TRUE)


alpha(estr?s,
      check.keys = TRUE)
# alpha(with(estr?s,
#             cbind(streu1,streu2,streu3,streu4,streu5)),
#       check.keys = TRUE)


alpha(insomnio,
      check.keys = TRUE)
# alpha(with(insomnio,
#             cbind(insom1,insom2,insom3,insom4,insom5)),
#       check.keys = TRUE)


alpha(intenci?ndeayudar,
      check.keys = TRUE)
# alpha(with(intenci?ndeayudar,
#             cbind(intay1,intay2,intay3,intay4,intay5)),
#       check.keys = TRUE)


alpha(intuici?n,
      check.keys = TRUE)
# alpha(with(intuici?n,
#             cbind(intui1,intui2,intui3,intui4,intui5)),
#       check.keys = TRUE)


alpha(intercambioext,
      check.keys = TRUE)
# alpha(with(intercambioext,
#             cbind(intex1,intex2,intex3,intex4,intex5)),
#       check.keys = TRUE)


alpha(starbucks,
      check.keys = TRUE)
# alpha(with(starbucks,
#             cbind(starb1,starb2,starb3,starb4,starb5)),
#       check.keys = TRUE)


alpha(toleranciasexual,
      check.keys = TRUE)
# alpha(with(toleranciasexual,
#             cbind(tolsex1,tolsex2,tolsex3,tolasex4,tolsex5)),
#       check.keys = TRUE)


alpha(toleraprejuicios,
      check.keys = TRUE)
# alpha(with(toleraprejuicios,
#             cbind(tprej1,tprej2,tprej3,tprej4,tprej5)),
#       check.keys = TRUE)


alpha(valormedioambiental,
      check.keys = TRUE)
# alpha(with(valormedioambiental,
#             cbind(valma1,valma2,valma3,valma4,valma5)),
#       check.keys = TRUE)


alpha(vidauniversitaria,
      use = "pairwise.complete.obs",
      check.keys = TRUE)
# alpha(with(vidauniversitaria,
#             cbind(vidau1,vidau2,vidau3,vidau4,vidau5)),
#       check.keys = TRUE)


#Si el programa arroja errores de gr?ficos aplicar 
#la funci?n de apagado de dispositivos gr?ficos: 

                      # dev.off()

#Analisis factorial para indicadores cuantitativos#

#
fa.parallel(aborto)
#
fa.parallel(acogidaextranjeros)
#
fa.parallel(ansiedad)
#
fa.parallel(ayudar)
#
fa.parallel(desconfianza)
#
fa.parallel(estr?s)
#
fa.parallel(insomnio)
#
fa.parallel(intenci?ndeayudar)
#
fa.parallel(intercambioext)
#
fa.parallel(intuici?n)
#
fa.parallel(personalidad)
#
fa.parallel(starbucks)
#
fa.parallel(toleranciasexual)
#
fa.parallel(toleraprejuicios)
#
fa.parallel(valormedioambiental)
#
fa.parallel(vidauniversitaria)

#An?lisis de Factorial para conjuntos de mas de 1 factor# 

#
fa(aborto,
   2)
#
fa(ansiedad,
   2)
#
fa(desconfianza,
   2)
#
fa(insomnio,
   2)
#
fa(toleraprejuicios,
   2)
#





### cor(ansiedad$ansev, insomnio$insom, use = "pairwise.complete.obs") ###

####  lm(insomnio$insom~ansiedad$ansev)
