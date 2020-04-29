# BUSA8090--A2T1--Yun-Ching Chen
# Question 3

library(tidyverse)
country <- c ("Belgium", "Spain", "Italy", "France", 
              "United Kingdom", "US","Germany", "Australia")
mortality <- c (64.18, 50.98, 45.27, 35.37, 32.70, 17.84, 7.61, 0.36)
Covid_19 <- tibble (country, mortality)
Covid_19
gg1<-ggplot( Covid_19, aes ( x = reorder(country, mortality), 
                              y=mortality)) + geom_bar(stat="identity", fill="steelblue")+ coord_flip()
gg2<- gg1 + ggtitle("Covid-19 deaths per 100,00 population") +xlab("Country") + ylab("Mortality")
gg2
