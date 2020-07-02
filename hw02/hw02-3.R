# Dylan Klingeman

### 3.1 What's a Matrix?

# Construct a matrix with 4 rows containing the numbers 11 to 30, filled row-wise. 

first_matrix <- matrix(11:30, byrow = TRUE, nrow =4)
first_matrix

# should make 4 ordered rows from 11 to 30

# Construct a amtrix with 5 columns containing the numbers 11 to 30, filled column-wise

second_matrix <- matrix(11:30, byrow = FALSE, ncol = 5)
second_matrix

# should make 5 columns ordered from 11 to 30

#

### 3.2 Construct a matrix

chick_weights <- chickwts$weight[c(1:20, 23:32)]

# Create a column-wise matrix called "weights" with three columns and ten rows from the "chick_weights" vector. 

weights <- matrix(chick_weights, byrow = FALSE, nrow = 10, ncol = 3)
three_diets <- weights
# should make a 3x10 matrix

# Display the values contained in the 'weights' matrix

weights

# should show the 3x10 matrix beginning with 179 and ending with 267. 

### 3.3 Name the columns and rows

# Use 'colnames()' to name the columns 'horsebean', 'linseed', and 'soybean'.

col_names_vector <- c("horsebean", "linseed", "soybean")
colnames(weights) <-  col_names_vector

# should assign names to each column

# Use 'rownames()' to name the rows iwth the patern 'Replicate #' Use the 'paste()' function efficiency. 

row_names_vector <- c(paste("Replicate", 1:10))
row_names_vector

rownames(weights) <- row_names_vector

# Should assing names to each row

weights

#

### 3.4 Calculations on matrices

#Store the average chick weight for each diet type in "mean_weights"

colSums(three_diets)
mean_weights <- colSums(three_diets)

# should show the sums of all three columns, then add it to a mean weights vector

#Print the values in mean_weights

mean_weights

# shows the values of colsums

# Calculate the mean weight of all 30 chicks in the matrix.

sum(colMeans(three_diets)) / 3

mean(three_diets)

# shows the mean of all 30 chicks

### 3.5 Add a column with another diet type

# Use 'chickwts$weight[60:69]' to access the first 10 chicks raise don casein diet. 

chickwts$weight[60:69]
casein_weights <- chickwts$weight[60:69]

# adds a vector for the chicks raised on casein

# Use 'cbind()' to add this new clumn of data to your 'weights' matrx. save as 'four' diets.

four_diets <- cbind(weights,casein_weights)

four_diets
 
 # should show a new fourth column added to the original three diets

# Rename the columns if necessary

# columns renamed above

# Calculate the mean weights of chicks for each diet type. 

colMeans(four_diets)

# should show the mean for each category of diet

#

### 3.6 Selecting matrix elements

# Select the entire linseed column by column number

four_diets[1:10,4]
four_diets[,4]

# should select the fourth row data

# Select the entire soybean column by name

four_diets[,"soybean"]

# should select all of the soybean data

# Select the entire ninth row by row number. 

four_diets [9,]

# should show the 9th row with values: 143, 213, 316, 216

# Select the entire third row by row name.

four_diets ["Replicate 3", ]

# should show the entire third row: 136, 181, 248, 379

# Select the fifth replicate from the horsebean column with any method. 

four_diets ["Replicate 5", "horsebean"]

# should select 5, 1 in the matrix. 

#

### 3.7 A little arithmetic with amtrices

# Convert grams to ounces

four_diets_ounces <- four_diets * 0.035
four_diets_ounces

# should convert everything to ounces, making the numbers much smaller

# Apply the log() function
log(four_diets_ounces)

# should show the log value of each weight

# Apply the count() function

count(four_diets_ounces)
..................................................
# should count the total of the matrix
  
# Apply the dim() function. 

dim(four_diets_ounces)

# should count the number of columns and rows

# Apply the length() function

length(four_diets_ounces)

# totals the number of chicks in the matrix (40)


#