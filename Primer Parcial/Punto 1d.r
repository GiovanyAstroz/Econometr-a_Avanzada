##Puntos 1.d


ls()
remove(list = ls())

install.packages("writexl")
install.packages("expss")
install.packages("openxlsx")
install.packages("rmarkdown")
install.packages("stringr")
install.packages("dplyr")
install.packages("tibble")
install.packages("tidyvers")
install.packages("purrr")
install.packages("tidyr")
install.packages("ggplot2")
install.packages("expss")
install.packages("SnpMatrix")
install.packages("XSnpMatrix")
install.packages("lib")
install.packages("SnpMatrix-class")
install.packages("gtsummary")
install.packages("markdown")


library(tidyverse)
library(readr)
library(rmarkdown)
library(tidyverse)
library(stringr)
library(tibble)
library(dplyr)
library(tokenizers)
library(writexl)
library(tidyverse)
library(purrr)
library(tidyr)
library(expss)
library(openxlsx)
library(SnpMatrix)
library(xsnpmatrix)
library(lib)
library(gtsummary)
library(readr)




beer <- read_csv("C:/Users/giova/OneDrive/Escritorio/Primer Parcial Econometr�a Avanzada/beer2.csv")
View(beer)
#preparamos las variables y y x para la estimaci�n del modelo. 
y = matrix(beer$q,nrow = 753, ncol = 1)
#En esta matriz seleccionamos las variables a tener en cuenta en esta estimaci�n 
X =matrix(data=c(rep(1,nrow (y)), beer$price, beer$importada, beer$artesanal),nrow =length(beer$price)  ,ncol = 4) 

#Estimamos los parametros del modelo. 
Betas = solve(t(X)%*%X)%*%t(X)%*%y
Betas 

#Residuales

e = y-X%*%Betas
e

# Errores Estandar

sigma2 <- sum(e^2)/(753-4) #Varianza 

ee<-sqrt(diag(sigma2*solve(t(X)%*%X)))#inversa de la diagonal de  (XtX) *varianza
#interpretaci�n, 

 # Estimamos el R2 
SEC <- sum(((X%*%Betas)-y)^2)
STC <- sum((y-mean(y))^2)

R2 <-(1-(SEC/STC))

#Valor Ajustado de la variable dependiente. 

Y1 <-X%*%Betas

#

#Punto e
Modelo1 <- lm(beer$q~beer$price+ beer$importada+ beer$artesanal, data=beer)
summary (Prueba)
Prueba$df.residual
resid(Prueba)
# Es el mismo. debido a que valemos monda. 



Interpretaci�n 

Por una unidad adicional de precio promedio de cerveza, se estima que en promedio, el n�mero de unidades de cervezas vendidas disminuya 701.311. Ceteris paribus.
Adicionalmente, cuando la cerveza es importada, en promedio, el n�mero de unidades vendidas aumenta 72.514, en contraste con las no importada. 
Por otra parte, cuando la cerveza es Artesam

