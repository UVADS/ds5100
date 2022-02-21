###############################################
# R4DS Ch15: Functions
###############################################
# Defining and using functions

# Quick note: when you're repeating code blocks,
# you likely need a function

# define some data
x <- 5                # single value
xx <- c(4,6,7,8,2,11) # vector of values

# define a function that does the following:
# -takes a value, vector of values as inputs
# -normalizes the value against the vector by subtracting
#  vector mean from value, and dividing by vector standard deviation

compute_zscore <- function(val, vec){
  z <- (val - mean(vec)) / sd(vec)
}

# function components:
# - function name
# - keyword "function"
# - arguments
# - body appears in curly brackets
# - return() can be used to return objects. if not stated,
#   last evaluated statement is returned.

# call the function
out <- compute_zscore(x, xx)
out

# test the function
# if value = mean of vector, z-score should be zero
print(compute_zscore(mean(xx), xx))

# if vector contains identical values, sd is zero, and z-score is undefined.
print(compute_zscore(x, c(1,1,1,1)))

# if vector contains missing, result will be NA
xx_na <- c(1,NA,3,5)
print(compute_zscore(x, xx_na))

#-------------------------------------------------------------
# TRY FOR YOURSELF (DON'T YET LOOK AT ANSWER BELOW!)
# 1a. Modify compute_zscore() to remove missing from vector before compute.






# soln
compute_zscore2 <- function(val, vec){
  z <- (val - mean(vec, na.rm = TRUE)) / sd(vec, na.rm = TRUE)
}


# 1b. Test that the function works properly, passing x, xx_na
print(compute_zscore2(x, xx_na))


# TRY FOR YOURSELF (DON'T YET LOOK AT ANSWER BELOW!)
# 2a. Modify compute_zscore() to impute NA in vector with median
# hints: is.na(x) indicates which values are NA
#        x[is.na(x)] accesses the values which are NA







# soln
compute_zscore_impute <- function(val, vec){
  med <- median(vec, na.rm = T)
  vec[is.na(vec)] <- med # replace NA with median
  z <- (val - mean(vec)) / sd(vec)
}

# 2b. Test that the function works properly, passing x, xx_na
print(compute_zscore_impute(x, xx_na))




#-------------------------------------------------------------
# Using conditions in functions

# function returns 1 if passed value is odd, 0 if even
# %% is mod operator (returns remainder)

is_odd <- function(x){
  if (x %% 2 == 1){
    return(1)
  } else {
    return(0)
  }
}

# call fcn to test some cases
is_odd(4)
is_odd(3)

#-------------------------------------------------------------
# TRY FOR YOURSELF (DON'T YET LOOK AT ANSWER BELOW!)
# 3a. Write a function that take a numeric x and returns 1 if 
# 0 <= x <= 1, else returns 0. 
# hint: use && for "and"








# soln

in_unit_interval <- function(x){
  if (x >= 0 && x <= 1){
    return(1)
  } else {
    return(0)
  }
}

# 3b. Test the function on some values
in_unit_interval(-1)
in_unit_interval(0)
in_unit_interval(0.5)
in_unit_interval(1)
in_unit_interval(2)
#-------------------------------------------------------------
# Function arguments can use default values

threshold_vals <- function(p, thresh = 0.5){
  # for each element in p, returns TRUE if value > thresh, else FALSE
  p > thresh
}

threshold_vals(c(0.6,0.4,0.1,1))

# pass a threshold
threshold_vals(c(0.6,0.4,0.1,1), 0.7)

#-------------------------------------------------------------
# Assert important preconditions

add_vectors <- function(x, y){
  # assert the lengths of vectors x and y match
  # if they do, sum elementwise, else throw error with stop()
  
  if (length(x) != length(y)){
    stop("`x` and `y` must be the same length", call. = FALSE)
  }
  x + y
}

# test cases
add_vectors(c(1,2,3),c(3,3,3))
add_vectors(c(1,2,3),c(3,3,3,3)) # breaks
#-------------------------------------------------------------
# Environment

z <- 4
test_fcn <- function(x){
  x ^ z
}

# wait...z isn't defined. how does this work?
test_fcn(2)

# R uses rules called lexical scoping to find values associated
# with a name. z isn't in the function, so R looks in the function's
# environment.


