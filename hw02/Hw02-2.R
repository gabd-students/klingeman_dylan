#Dylan Klingeman

####2.1 Vectors Explained

A <- "A"
B <- "B"

# Note the use of quotes for the last for letters
# not for the two variables defined above. 

alphabet <- c(A, B, "C", "D", "E", "F")
alphabet

G <- 7

# Vectors must have the same data type. 

alphabet <- c(A, B, "C", "D", "E", "F", G)
alphabet


###2.2 Vector Types

#Alphabet and integer vectors

alphabet <- c("A", "B", "C", "D", "E", "F")
integers <- c(1, 2, 3, 4, 5, 6)

# Logical vector
logical_vector <- FALSE
logical_vector <- FALSE
logical_vector <- TRUE
logical_vector

#

### 2.3 Biological Vectors

# Cultures without pplo contaminant
cultures_without_pplo <- c(4.6, 4.8, 5.1, 5.5, 5.8)

#cultures with pplo contaminant 
cultures_with_pplo <- c(4.6, 4.7, 4.8, 4.9, 4.8)

#

### 2.4 Name your vectors

# Two vectors of staff members from different business divisions
financial <- c("Jessica", "Smith", "Payroll", "supervisor")
facilities <- c("Stephen", "Jones", "electrical", "Technician")

# A vector of names needed to name the elements
names_vector <- c("First Name", "Last Name", "Department", "Position")

# Name the elements of each division
names(financial) <- names_vector
names(facilities) <- names_vector

financial

facilities

#Create a 'days sampled' vector

days_sampled <- c("Day 0", "Day 2", "Day 4", "Day 6", "Day 8")

# Name your two data vectors with the 'days_sampled' vector
names(cultures_without_pplo) <- days_sampled

names(cultures_with_pplo) <- days_sampled

# Check that your two data vectors were properly named

cultures_with_pplo 

cultures_without_pplo

# Should list the days above each number for both examples

#

### 2.5 Calculations with vectors

# Find the maximum values in cultures_without_pplo and cultures_with_pplo
# Store in max-without_pplo and max_with_pplo, respectively

max(cultures_without_pplo)

max_without_pplo <- max(cultures_without_pplo)

max(cultures_with_pplo)

max_with_pplo <- max(cultures_with_pplo)

# Maximums should be 5.8 and 4.9 respectively

# Find the minimum values in cultures_without_pplo and cultures_with_pplo
# Store in min-without_pplo and min_with_pplo, respectively

min(cultures_without_pplo)

min_without_pplo <- min(cultures_without_pplo)

min(cultures_with_pplo)

min_with_pplo <- min(cultures_with_pplo)

# Minimums should both be 4.6

#Use 10^ to calculate the actual number of cells for each culture
#Store in cell_counts_without_pplo and cell_counts_with_pplo

10^cultures_without_pplo

cell_counts_without_pplo <- 10^cultures_without_pplo

10^cultures_with_pplo

cell_counts_with_pplo <- 10^cultures_with_pplo

# day 0 should be 39810 for each

# Calculate the average number of cell counts for each vector. 
# You do not have to save these values to variables

mean(cell_counts_with_pplo)

mean(cell_counts_without_pplo)

# With should have a higher value than without

#

### 2.6 Extract individual elements from a vector

# Select the third element from cultures_without_pplo by position number

cultures_without_pplo[3]

# should show the data for day 4 of cultures_without_pplo

# Select the odd numbered elements of cell_counts_with_pplo using a vector of position numbers.

position_vector <- c(1, 3, 5)
cell_counts_with_pplo[position_vector]

# should show the data for days 0, 4, and 8

# Select the elements for 'Day 2' and 'Day 4' by name from cultures_with_pplo

cultures_with_pplo["Day 2"]

cultures_with_pplo["Day 4"]

# should show the data for days 2 and 4 of cultures with pplo

#

### 2.7 Extraction by logical comparison

# Use "cell_counts_without_pplo" to create a logical vector for cell counts greater than 100,000 (do not use the comma in your code; use 100000). 

 large_cell_counts <- cell_counts_without_pplo >100000
 large_cell_counts
 
# should show true for days that had a cell count over 100,000
 
 # Use that vector to show the days and log values from "cultures_without_pplo". 
 
cultures_without_pplo[large_cell_counts]

 
 # should show the days and log values if they had a cell count over 100,000 (days 4, 6, and 8)
 
 
 # Use 'cell_counts_with_pplo" and "&" to create  logical vector for cell counts greater than 50,000 and less than 75,000
 
 number_range <- cell_counts_with_pplo >=50000 & cell_counts_with_pplo <= 70000
 number_range
 
 # should show true for any number between 50-75k
 
 # Use that logical vector to show the days and log values from "cultures_with_pplo".
 
cultures_with_pplo[number_range]
 
 # should show the days and log numbers that had a range fo 50-75k cellc ount (2, 4, and 8)
 
 #