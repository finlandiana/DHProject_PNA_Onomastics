library(readxl)
library(tidyverse)
library(ggplot2)
library(readr)
library(stringr)
PNA_Data_xlsx <- read_excel("~/Asiakirjat/PNA_Data_xlsx.xlsx")
View(PNA_Data_xlsx)

#Selecting the wanted data
Akk_Male_Names <- subset(PNA_Data_xlsx, NameOrigin == "Akkadian" & Gender == "masc", select = c("Name", "Time", "Profession", "Place"))
view(Akk_Male_Names)


