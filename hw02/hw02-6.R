# Dylan Klingeman

### 6.1 Introduction to Lists


### 6.2 Create a list

# Numeric vector with numerics from 1 to 6
numbers <- 1:6

# Should make a vector of the numbers 1 through 6

# Logical vector with TRUE and FALSE

boolean <- rep(c(TRUE, FALSE), 4)
boolean

# should report TRUE, FALSE 4 times

# Letter matrix with the first nine letters of the english alphabet
letters <- matrix(LETTERS[1:9], ncol = 3)

# sorts the first 9 letters of the alphabet into 3 columns

# First 10 elemetns of the chickwts data frame

chicks <- chickwts[1:10,]

# Should show the first 10 data of the data frame

# Use the "list()" function to create "the_list" with the above objects. Use the names of the objects to name the objects

the_list <- list(numbers = numbers, boolean = boolean, letters = letters, chicks = chicks)


# Should form a list of all the data made above

# Display the contents of "the_list"
the_list

# Shows the data within the_list

#

### 6.3 Extract eleemnts from a list

# Add the line to create the horsebean vector
hb_chicks <- chickwts$weight[1:10]

# shows only the 1-10 lines of the horsebean vector in chickwts

# Add the line to create the linseed vector

ls_chicks <- chickwts$weight[11:20]

# shows only the 11-20 lines of the linseed vector in chickwts

# Create a list object with the results of the t-test.

chicks_t <- t.test(hb_chicks, ls_chicks, var.equal = TRUE)

# creates a test list of the above

# Run the "str()" function on "chicks_t"

str(chicks_t)

# shows the structure of the chicks_t

# Display the numeric value of the "statistic" object from "chicks_t"

chicks_t$statistic

# displays the t-value in the chicks_t

# Display the numeric value of the "p.value" object from "chicks_t"

chicks_t$p.value

# displays the p-value in chicks_t

# Display the lower confidence limit

chicks_t$conf.int[1]

 # displays the lower confidence limit

# Display the upper confidence limit

chicks_t$conf.int[2]

# displays the upper confidence limit

# Create a text string called "whew" with the value"I did it!"
whew <- "I_did_it!"
whew

# says "I did it!" whenever whew is typed

#