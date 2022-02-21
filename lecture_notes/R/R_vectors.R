###############################################
# R4DS Ch16: Vectors
###############################################
# ATOMIC VECTORS

# we cover logical, integer, double, character
# all elements have same data type

vec <- c(3,5,1)
vec

# typeof() returns the element data types:
typeof(vec)

str_vec <- c(3, "NO!")

# notice including the string makes str_vec a vector of strings
# the most complex type wins
typeof(str_vec[1])

# notice including a double makes all elements doubles
c(3.4,3)

typeof(c(3.4,3))

# vector length
length(c(3.4,3))

# logical vector
bool_vec <- c(TRUE, NA, TRUE, FALSE)
typeof(bool_vec)
bool_vec[1]

# another logical vector
# aside: can build a sequence like this: 1:10
more_bool <- 1:10 > 4
more_bool

# does this make sense?
na_bool <- c(1:10,NA) > 4
na_bool

# what will this return?
c(1:10,NA) > NA

###############################################
# Coercion

# implicit
b <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
sum(b)

# this returns an integer, as TRUE is treated as 1, FALSE as 0

# explicit: use a function to do type casting
as.integer(b)

as.logical(c(1, 1, 0, 0, 1))

# in a conditional statement
xx <- 1
if (xx) print("shalom") else print("adios")
# xx converted to TRUE

###############################################
# Recycling rules

# add a scalar to a sequence. what does this produce?
# NOTE: a scalar in R is a vector of length 1
1:10 + 5

# shorter length vector is repeated to length of longer vector
4 + c(1,1,1,1)

# rep(): replicated elements of vector
rep(1,4)
4 + rep(1,4)


# most built-in functions are vectorized (operate on vector of elements)
4 + rep(1,4) > 3

sqrt(1:10)
exp(1:10)

###############################################
# Subsetting

z <- c(1,2,5,6)
z[c(1,3)] # keep elements in location 1,3
z[z>2]    # boolean mask: keep elements > 2

z2 <- c(1,2,5,6,NA)
z2[!is.na(z2)] # keep non-missing elements

###############################################
# LISTS
# can contain different data types
# can contain list of lists
# course, notes won't go deeply into lists

lst <- list("pi", 3.14, c(2.71,0.5))
# inspect:
lst
lst[[3]]
lst[[3]][1]
length(lst)

# naming elements in a list
named <- list(probs = c(0.55, 0.22), labels = c(1,0) )
named
named$probs
named$probs[2]
named$labels
named$labels[1]