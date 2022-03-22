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
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#horizontal chart of Adad quantity
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Theophoric element Adad") +
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
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Marduk with frequency
ggplot(Marduk_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Marduk") +
  coord_flip()

#Nabu names
Nabu_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Nabû"), ] 

ggplot(Nabu_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Nabu in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Nabu frequency
ggplot(Nabu_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Nabu") +
  coord_flip()


#Sin names
Sin_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Sīn"), ]

ggplot(Sin_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Sin in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Sin frequency
ggplot(Sin_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Sin") +
  coord_flip()


#Assur names
Assur_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Aššūr"),]

ggplot(Assur_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Assur in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Assur frequency
ggplot(Assur_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Assur") +
  coord_flip()

#Bel names
Bel_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Bēl"),]
ggplot(Bel_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Bel in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#Bel frequency
ggplot(Bel_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Bel") +
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
  coord_flip()

ggplot(Nergal_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Nergal") +
  coord_flip()

#Šamaš names

Samas_names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Šamaš"),]

ggplot(Samas_names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Samas in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

ggplot(Samas_names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Quantity",
       title = "Quantity of Samas") +
  coord_flip()
