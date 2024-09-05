

#Variation - Tendency to change the vAlue of any given variable to change from measurement to measurement

library(datasets)
#setwd("C:\\Users\\User\\Downloads\\Training\\Board Infinity\\R\\archive")
diamonds <- read.csv("diamonds.csv")
summary(diamonds)
#To see a sample of the data imported
head(diamonds)

#Calling ggplot library
library(ggplot2)
#Mapping the data on top of the barchart, to get a rough estimate of the distribution
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))

library(dplyr)
diamonds %>% count(cut)

colnames(diamonds)

summary(diamonds$carat)
#histogram gives us continuous data point distribution in a frequency basis
ggplot(data = diamonds) + geom_histogram(mapping = aes(x = carat),binwidth = 0.5)
diamonds %>% count(cut_width(carat, 0.5))


ggplot(data = diamonds) + geom_histogram(mapping = aes(x = carat),binwidth = 0.1)
diamonds %>% count(cut_width(carat, 0.1))

#data is distributed with more granularity( Not many diamonds with carat more than 3)
ggplot(data = diamonds, mapping = aes(x = carat, colour = cut)) + geom_freqpoly(binwidth = 0.1)

#Getting to know the frequency on the histogram(when carat valuez(purity) is increaseing ,purchasing is reducing)
ggplot(data = diamonds, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)

head(diamonds)

# boxplot - Univariate(gives characteristic of that specific column with no other column)
# Outlier - Data point(DP) which is not fitting to its own distribution, that DP is outlier
#Q3-Q1= INTERQUATILE RANGE (iqr)-- used to calculate lower whisker(Q1-1.5IQR)-any value lower than this is abnormal which is basically the outlier
# upper whisker (Q3 +1.5IQR)---any value above this is abnormal which is the outlier
#boxplot considers one variable at a time(here numeric variable and not categorical)
boxplot(x = diamonds$x)

#Scatterplot - finding bivariate for 2 variables at a time(here numeric variable and not categorical)
#outlier(abnormal)- when the carat purity increases price does not increase in a few cases
ggplot(data = diamonds) + geom_point(mapping = aes(x = carat,y = price))



