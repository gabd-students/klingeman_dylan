# Dylan Klingeman

### 5.1 Data frames

### 5.2 Viewing data frames

# Use "data()" to load the "iris" data frame

data()

# will display the R frame data sets

# Enter "iris" on a line by itself to display the full data frame. 

iris

# pulls up the iris data set

# Display the first 10 rows of the data frame. 

head(iris, n=10)

# displays the first 10 rows of the iris frame

# Display the last rows of the data frame. 

tail(iris, n=10)

# displays the last 10 rows of the iris frame

# Display the dimensions using the least amount of code (9 characters).
dim(iris)

# shows the dimensions of the iris data set, 150x5

# Display the structure of the data frame. 

str(iris)

# displays the structure of the iris data frame

### 5.3 Extracting elements from a data frame

# Display the 101st row of the "Petal.Length" column, using column numbers.

iris[101, 3]

# displays the value for row 101 of petal length, which is 6.0

# Display the first six rows of all columns mimic head())
iris[1:6,]

# should display the 6 rows of all columns

# Display rows 48:52 of the fourth column, using the column header name in square brackets. 
iris[48:52, "Petal.Width"]

# should display rows 48-52 of the fourth column

# Display the contents of the "Sepal.Width" column using the "$"

iris$Sepal.Width

# should show every row in sepal.width

# Optional challenge: Use a combination of dolalr sign and square brackets in one line of code to show rows 50 and 51 from the species column. 

iris$Species[50:51,]

# Couldn't get it to work

### 5.4 Extracting elements with boolean vectors

# Extract rows where sepal length less than or equal to 5.5 Save the result. 

small_sepal_length <- iris$Sepal.Length <=5.5
iris[small_sepal_length,]

# shows only rows where the sepal length is below 5.5

# Apply the "min()" and "max()" functions to your result from above.

min(small_sepal_length)
max(small_sepal_length)

# shows the minimum and maximum value in the rows

# Display rows where sepal width is less than 3.2 and species is setosa

small_sepal_width <- iris$Sepal.Width <3.2 & iris$Species == "setosa"

small_sepal_width

# shows values of sepal width that are less than 3.2 and the species setosa

# Display rows where sepal width is less than 2.4 or petal width is greater than 2.0

large_petal_width <- iris$Sepal.Width <2.4 | iris$Petal.Length >2.0

large_petal_width

#

### 5.5 Use subset to extract data from a data frame

# Display rows for eptal length between and including 4.0 and 5.0 

subset(iris, Petal.Length>= 4.0 & Petal.Length <=5.0)

# Should siaplay only rows where petal length is between 4 and 5

# Display rows for sepal length < 5.2 and species is versicolor.

subset(iris, Sepal.Length < 5.2 & Species == "versicolor")

# should only dispaly rows where there are versicolor with a sepal length lower than 5.2

### 5.6 Sort

# Order the data frame from shortest to longest sepal length. 

sort_order <- order(iris$Sepal.Length)
iris[sort_order, ]

# orders the iris data frame so sepal length goes from smallest to longest

# Display the species and petal width columns in decreasing order of petal width. 

petal_width_order <- order(iris$Petal.Width, decreasing = TRUE)
iris[petal_width_order,"Species"]

# orders the data by petal width and shows the species column

#