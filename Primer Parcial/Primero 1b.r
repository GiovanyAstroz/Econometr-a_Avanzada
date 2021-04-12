##Puntos 1.b

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
install.packages("printr", type="source")


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
library(lib)
library(gtsummary)
library(readr)
library(markdown)




beer <- read_csv("C:/Users/giova/OneDrive/Escritorio/Primer Parcial Econometría Avanzada/beer2.csv")
View(beer)
tab1 <-beer %>%    group_by(marca) %>%    summarise(mean(sales),             median(sales),             sd(sales))
tab2 <-beer %>%    group_by(marca) %>%    summarise(mean(price),             median(price),             sd(price))
tab3 <- beer %>%    group_by(marca) %>%    summarise(mean(q),             median(q),             sd(q))

temporal12 = merge(by="marca", tab1,tab2)
Tabla1.b = merge (by="marca", temporal12,tab3 )
Tabla1.b            
-------------------------------
  
  
  ## Punto F
  
  Incluyendo los controles por marca, 