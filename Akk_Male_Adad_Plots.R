#This is for doing the bar charts of quantities and percentages of the ditsribution of each theophoric element

library(ggplot2)


# plot the distribution of adad...This one made vertical bars which did not look as good as horizontal ones
Adad_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Adad"), ] 
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar()

#plot the distribution of adad in percentages and horizontally
ggplot(Adad_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Adad in different times") +
  geom_bar(color="gray", fill=rgb(0.4,0.8,0.2,0.3) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#horizontal chart of Adad quantity
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Theophoric element Adad") +
  geom_bar(color="gray", fill=rgb(0.4,0.8,0.2,0.3) )+
  coord_flip()

#Horizontal chart of Marduk-Time
Marduk_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Marduk"),]
ggplot(Marduk_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Marduk in different times") +
  geom_bar(color="gray", fill=rgb(0.3,0.7,0.4,0.3) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Marduk with frequency
ggplot(Marduk_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Marduk") +
  geom_bar(color="gray", fill=rgb(0.3,0.7,0.4,0.3) )+
  coord_flip()

#Nabû names
Nabu_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Nabû"), ] 

ggplot(Nabu_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Nabû in different times") +
   geom_bar(color="gray", fill=rgb(0.2,0.5,0.7,0.9) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Nabu frequency
ggplot(Nabu_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Nabû") +
   geom_bar(color="gray", fill=rgb(0.2,0.5,0.7,0.9) )+
  coord_flip()


#Sīn names
Sin_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Sīn"), ]

ggplot(Sin_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Sīn in different times") +
  geom_bar(color="gray", fill=rgb(0.9,0.4,0.4,0.9) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Sin frequency
ggplot(Sin_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Sīn") +
  geom_bar(color="gray", fill=rgb(0.9,0.4,0.4,0.9) )+
  coord_flip()


#Aššūr names
Assur_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Aššūr"),]

ggplot(Assur_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Aššūr in different times") +
  geom_bar(color="gray", fill=rgb(0.9,0.8,0.4,0.9) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Assur frequency
ggplot(Assur_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Aššūr") +
  geom_bar(color="gray", fill=rgb(0.9,0.8,0.4,0.9) )+
  coord_flip()

#Bēl names
Bel_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Bēl"),]
ggplot(Bel_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Bēl in different times") +
  geom_bar(color="gray", fill=rgb(0.8,0.4,0.6,0.9) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Bel frequency
ggplot(Bel_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Bēl") +
  geom_bar(color="gray", fill=rgb(0.8,0.4,0.6,0.9) )+
  coord_flip()

#Nergal names
Nergal_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Nergal"),]


ggplot(Nergal_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Nergal in different times") +
  scale_y_continuous(labels = scales::percent)+
  geom_bar(color="gray", fill=rgb(0.6,0.6,0.2,0.9) )+
  coord_flip()

ggplot(Nergal_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Nergal") +
  geom_bar(color="gray", fill=rgb(0.6,0.6,0.2,0.9) )+
  coord_flip()

#Šamaš names

Samas_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Šamaš"),]

ggplot(Samas_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Šamaš in different times") +
  geom_bar(color="gray", fill=rgb(0.7,0.6,0.9,0.9) )+
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

ggplot(Samas_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Šamaš") +
  geom_bar(color="gray", fill=rgb(0.7,0.6,0.9,0.9) )+
  coord_flip()
