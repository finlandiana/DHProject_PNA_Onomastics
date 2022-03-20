library(ggplot2)


# plot the distribution of adad
Adad_Names <- Akk_Male_Names[str_detect(Akk_Male_Names$Name, "Adad"), ] 
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar()

#plot the distribution of adad in percent
ggplot(Adad_Names, 
       aes(x = Time, 
           y = ..count.. / sum(..count..))) + 
  geom_bar() +
  labs(x = "Time", 
       y = "Percent", 
       title  = "Distribution of theophoric element Adad in different times") +
  scale_y_continuous(labels = scales::percent)+
  coord_flip()

#horixzontal chart of Adad
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Frequency",
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
       y = "Frequency",
       title = "Frequency of Marduk") +
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
       y = "Frequency",
       title = "Frequency of Nabu") +
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
       y = "Frequency",
       title = "Frequency of Sin") +
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
       y = "Frequency",
       title = "Frequency of Assur") +
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
       y = "Frequency",
       title = "Frequency of Bel") +
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
       y = "Frequency",
       title = "Frequency of Nergal") +
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
       y = "Frequency",
       title = "Frequency of Samas") +
  coord_flip()
