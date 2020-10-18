rm(list = ls(all = TRUE))
graphics.off()
shell("cls")

data <- read.csv(file = "enzyme_activity.csv", 
                 header = TRUE)
head(data)
data$genotype <- as.factor(x = data$genotype)
data$gender <- as.factor(x = data$gender)
str(data)
attach(data)
library(stats)

# Main effect
aov.res1 <- aov(activity ~ genotype+gender)
anova(aov.res1)

# Interaction effect
aov.res2 <- aov(activity ~ genotype +gender +
                  genotype:gender)
anova(aov.res2) #figure 19

