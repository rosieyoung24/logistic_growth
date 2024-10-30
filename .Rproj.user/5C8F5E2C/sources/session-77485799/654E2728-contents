## Script to estimate the model parameters using a linear approximation ----

library(dplyr)


growth_data <- read.csv("experiment.csv")

## Case 1. K >> N0, t is small ----
# before reaching carrying capacity - exponential 
# before 1500 it is a straight line 
# fitting a logistic regression to get slope and y intercept 
# slope is r - growth rate 
# y intercept would be N0 - starting population 
# beware of log when calculating N0 - need to reverse log first 

data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

## Case 2. N(t) = K ----
# after reaching carrying capacity 
# so after t = 2500 where the line is fully straight and flat 
# to get K (intercept)

data_subset2 <- growth_data %>% filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)






