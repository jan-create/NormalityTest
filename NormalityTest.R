#####Normality Test#####

#####Load Packages#####
library(dplyr)
library(ggpubr)

#####Load Data#####
my_data <- ToothGrowth

####Display random sample of 10 rows####
set.seed(1234)
dplyr::sample_n(my_data, 10)

#####Check normality of data in R#####
#Visual Check
#Histogram
ggdensity(my_data$len, 
          main = "Density plot of tooth length",
          xlab = "Tooth length")
#Q-Q plot
ggqqplot(my_data$len)

#Sapiro-wilk nomality test
shapiro.test(my_data$len)
#the p-value > 0.05 implying that the distribution of the data are not significantly different from normal distribution. 
#In other words, we can assume the normality
