library(ggplot2)
data(Adad_Names)

# plot the distribution of adad
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
  scale_y_continuous(labels = scales::percent)

#horixzontal chart
ggplot(Adad_Names, aes(x = Time)) + 
  geom_bar() +
  labs(x = "",
       y = "Frequency",
       title = "Theophoric element Adad") +
  coord_flip()
