### Scripts

## Standard error of the mean (Working)

std_err <- function(x, na.rm =FALSE) { 
  ifelse (na.rm,                       
          x <- na.omit(x), 
          x)
  sd(x)/ sqrt(length(x))
}

  
# 1st argument states that it is a vector that will accept numbers. 
# 2nd argument sets the na.rm = FALSE as the default. (This says not to remove NA values if they appear.)
# The if else statement will by default will keep NA values. However, if "na.rm = TRUE" is placed in a separate argument, it will remove NA values. 
# The formula for standard error of the mean. sd = standard deviation

#

## Scaled mass index function (Working)

scaled_mass <- function(mass=0, tarsus=0, slope=0) {
  mass*((mean(tarsus)/tarsus)^slope)
}

# Creates the argument for scaled_mass(). This is used to scale the mass of a bird to the length of it's tarsus. 
# The defaults are set to 0 for: mass, tarsus, and slope. 
# The formula for the scaled mass index.
# 
mass <- c(26.7, 22.8, 24.7, 26.1, 23.9)

# mass values for scaled_mass() argument

tarsus <- c(18.4, 17.5, 18.4, 18.0, 18.2)

# tarsus values for scaled_mass argument

slope <- (1.5)

# slope value for scaled_mass argument

#