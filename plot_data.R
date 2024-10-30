# Script to plot the logistic growth data ----


## to load the data ----
growth_data <- read.csv("experiment.csv")


install.packages("ggplot2")
library(ggplot2)

## plotting the data ----
 

# raw data 
# Sigmoidal curve - logistic growth 

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("N (#cells)") +
  
  theme_bw()

# semi-log plot 
# transforming y axis but not the x 
# so splits up the growth into 2 distinct sections 

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("log10 (N)") +
  
  scale_y_continuous(trans='log10')

## fit the linear models ----



# finally assess the fit of the model to your data graphically
