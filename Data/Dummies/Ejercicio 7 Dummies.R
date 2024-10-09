#Clear the environment
rm(list = ls())

#Installing packages needed
install.packages("ggpubr") #to create kernel distributions (histograms but with lines)
install.packages("ggplot2") #for graphs
install.packages("taRifx") #to destring variables
install.packages("tidyverse")
install.packages("gtsummary") #for nice regression tables
install.packages("survival") 
install.packages("psych") #for  summary stats.
install.packages("gtsummary") #for nice summary stats table.


#Loading packages needed
library(ggpubr)
library(ggplot2)
library(taRifx)
library(tidyverse)
library(gtsummary)
library(survival)
library(psych)
library(gtsummary)

exceldata <- readxl::read_excel("TeachRatings.xlsx")
ratings = data.frame(exceldata)
View(ratings)
str(ratings)

#proportions
prop.table(table(ratings$female))
prop.table(table(ratings$minority))
prop.table(table(ratings$nnenglish))

#descriptive statistics
summary(ratings$beauty)
summary(ratings$course_eval)


#descriptive table: medianas y rango inter-cuartil
desc <- ratings %>% select(beauty, course_eval, age, female, nnenglish)
desc %>% tbl_summary()

#histograms
hist(as.numeric(ratings$beauty))
hist(as.numeric(ratings$course_eval),
                main="Histogram for Course Evaluation", 
                xlab="Rating", 
                border="black", 
                col="red",
                xlim=c(1,5),
                las=1, 
                breaks=5)

#regressions: dependiente - Evaluación del Curso 
# independiente: belleza del profe(a) en DS.

m1 <- lm(formula = course_eval ~ beauty, data = ratings)

#Agregando otras variables explicativas o independientes
m2 <- lm(formula = course_eval ~ beauty + female, data = ratings)
m3 <- lm(formula = course_eval ~ beauty + female + minority, data = ratings)
m4 <- lm(formula = course_eval ~ beauty + female + minority + nnenglish, data = ratings)
m5 <- lm(formula = course_eval ~ beauty + female + minority + nnenglish + age, data = ratings)

summary(m1)
summary(m2)
summary(m3)
summary(m4)
summary(m5)
?summary

#tbl_regression(m1, exponentiate = TRUE)

#for importing
#options(scipen=100)
#dec=","


#destring vars
#beauty<- destring (ratings$beauty)
#eval<- destring (ratings$course_eval)