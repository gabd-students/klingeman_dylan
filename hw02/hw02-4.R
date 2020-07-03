# Dylan Klingeman

### 4.1 What is a factor?

# Make a character vector called "bee_visitors_vector"

bee_visitors_vector <- c("kiribiellus", "kiribiellus", "flavifrons", "kiribiellus", "bifarius", "flavifrons", "kiribiellus")

# should create the vector with the seven above individuals

# Make a "bee_visitors_factor" factor from "bee_visitors_vector".

bee_visitors_factor <- factor(bee_visitors_vector)

# should create the factor from the vector

# Print out bee_visitors_factor

bee_visitors_factor

# should display the results of the factor

### 4.2 Factor types

# Create "proboscis_vector" with seven elements

proboscis_vector <- c("Long", "Long", "Intermediate", "Long", "Short", "Intermediate", "Long")

# creates the vector with randomly arranged data

# Create an ordered "proboscis_factor" ordered from long to short. 

proboscis_factor <- factor(proboscis_vector, order = TRUE, levels = c("Short", "Intermediate", "Long"))

# should create the ordering for the vector data above, with short < intermediate < long

# Display the dcontents of proboscis_factor

proboscis_factor

# should display the data of the completed factor

### 4.3 Summarizing a factor

# Apply the "summary()" function to bee_visitors_factor and proboscis_factor. 

summary(bee_visitors_factor)

summary(proboscis_factor)


# shows the summary for how many of each category there were

### 4.4 Extracting from and comparing factors

# Extract from "bee_visitors_factor" the elements that are *not* kirbiellus

bee_visitors_factor[c(3,5,6)]

# should show the three non-kiribiellus data points

# Extract from "bee_visistors_factor" the second, and fourth through sixth elements. Use the colon for the range.

bee_visitors_factor [c(2, 4:6)]

# should show 2, 4, 5, and 6 from the data 

# Test whether the first element of "proboscis_factor" is longer than the last element of "proboscis_factor"

pf1 <- proboscis_factor[1]
pf7 <- proboscis_factor[7]

pf1 > pf7

# Optional challenge: redo the test, but with length() to obtain the 7th element

#