# editing the time periods  
table(PNA_Data_xlsx$Time)

#How many Akkadian male names in each period before new times
Names_In_Times <- Akk_Male_Names$Time
table(Names_In_Times)

ggplot(Akk_Male_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "Time",
       y = "Frequency",
       title = "Nimien ajallinen jakauma") +
  coord_flip()

#editing the time periods into more even slots and removing the overlapping of slots... There probably would have been a cleaner way to do this...
first_period <- c("704-681 Sennacherib", "699-600 7th century","680-631 Esarhaddon and/or Assurbanipal", "704-669 Sennacherib and/or Esarhaddon", "699-650 early 7th century", "680-669 Esarhaddon")
new_1 <- "699-650"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% first_period] <- new_1
}

second_period <- c("649-600 late 7th century", "668–631 Assurbanipal","668-600 Assurbanipal and/or later", "631-627 Assur-etel-ilani", "631-600 after Assurbanipal", "627-612 Sin-šarru-iškun")
new_2 <- "649-600"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% second_period] <- new_2
}

third_period <-c("744-727 Tiglath-pileser III","799-700 8th century","749-650 late 8th or early 7th century", "754-745 Aššur-nerari V","721-681 Sargon II and/or Sennacherib", "744-705 Tiglath-pileser III - Sargon II", "726-722 Shalmaneser V", "721-705 Sargon II", "749-700 late 8th century", "754-727 Assur-nerari V and/or Tiglath-pileser III")
new_3 <- "754-700"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% third_period] <- new_3
}

fourth_period <- c("772-755 Assur-dan III", "782-727","782-773 Shalmaneser IV", "799-750 early 8th century","810-755 Adad-nerari III - Assur-dan III","810-783 Adad-nerari III","823-783 Šamši-Adad V and/or Adad-nerari III")
new_4 <- "810-755"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% fourth_period] <- new_4
}

fifth_period <- c("823-811 Šamši-Adad V","899-700 9th or 8th century", "858-811 Shalmaneser III and/or Šamšī-Adad V", "858-824 Shalmaneser III")
new_5 <- "858-811"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% fifth_period] <- new_5
}

sixth_period <- c("883-859 Ashurnasirpal II", "890-859 Tukulti-Ninurta II and/or Ashurnasirpal II","911-891 Adad-nerari II")
new_6 <- "911-859"
for (i in seq_along(Akk_Male_Names)) {
  Akk_Male_Names[[i]][Akk_Male_Names[[i]] %in% sixth_period] <- new_6
}


#How the new names are distributed now
ggplot(Akk_Male_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of names in different time periods") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()
