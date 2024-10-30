#Script to plot data and model

growth_data <- read.csv("experiment.csv")



logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.8941709) #starting population (reverse logged) from model 1
  
r <- 0.0100086 #growth rate (t) - below intercept in the linear model from model 1 
  
K <- 6.00e+10  #carrying capacity from model 2 

# plotting the model against the data to see how well it fits 

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

# perfect fit 


# Make a list of the packages required and save them in a file called package-versions.txt
sink(file = "package-versions.txt")
sessionInfo()
sink()



