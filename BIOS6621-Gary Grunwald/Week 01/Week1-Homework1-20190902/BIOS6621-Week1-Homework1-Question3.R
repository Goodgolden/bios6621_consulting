### R lesson 3, Grunwald
### Data management
### This is a very elegant feature in R.  You can do a lot with very few letters.
###    It is also very easy to get it wrong.  Double check everything.

### There are many kinds of objects in R.  Some of the most common are
#   vector
#   matrix
#   data frame (matrix where columns may be of different types (eg numeric or character)
#   list (set of common objects bound together with one name)

### Vectors (from lesson 1)
### -----------------------
x <- c(1,3,4,6,9,10,11,14)                 # numeric vectors
y1 <- c(102,101,89,92,81,80,75,72)
y2 <- c(88,85,81,80,76,71,66,64)
lab <- c("a","b","c","d","e","f","g","h")  # character vector

# Sub-vectors
x[c(1,3,7)]         # selects elements 1, 3, and 7 of x
x[c(3:5)]           # selects elements 3,4,5 of x
x[3:5]              # same
x[-4]               # x omitting element 4
x[-c(2,4,6)]        # x omitting elements 2,4,6
# Note that there is no <- in these, so the object is created and printed but not stored

# Vectors can be added, multiplied, logged, etc -- check the result on a small example
2*x
log(x)
x+y1
x*y1

# Concatenating vectors
c(x,y1,y2)
c(x, lab)           # note vectors are different types

### Matrices
### First dimension is row (horizontal), 2nd dimension is column (vertical)
### -----------------------------------------------------------------------
xy.mat <- cbind(x, y1, y2)               # cbind puts columns together
xy.long <- rbind(x, y1, y2)              # rbind stacks rows together
na.mat <- matrix( NA, ncol=4, nrow=2 )   # useful to create a blank matrix to fill in later

# Warnings will generally be given when dimensions don't match
cbind(x, c(1:5))
# But maybe not ...  check, check, and check again (same in SAS)
cbind(x, c(1:4))

# Sub-matrics are selected the same way as sub-vectors,
#   using the methods above on each dimension
#   leaving a dimension blank means use all elements
xy.mat[2:4]         # rows 2, 3, 4, all columns
xy.mat[, -2]          # omit column 2
xy.mat[2:4, -2]
xy.mat[c(1,3,7),]

# Subsets can be formed from conditions
x[x > 10]
y1[x > 10]
xy.mat[x>10, ]
xy.mat[ x <= 10 & x > 4, ]

# Dimensions can be gotten using
length(x)
dim( xy.mat )

x <- c(1,3,4,6,9,10,11,14)                 # numeric vectors
y1 <- c(102,101,89,92,81,80,75,72)
y2 <- c(88,85,81,80,76,71,66,64)
lab <- c("a","b","c","d","e","f","g","h")  # character vector



# Ex 1: Explain (1 sentence each) what each of these statements does
x[c(3:7)-2]
# to show the values of subset: the element 1 to element 5.
x[c(3:7)]-2
# to show the values of subset: the element 3 to element 7 minus 2.
xy.mat[14, ]
# to show the row 14, the whole columns
xy.mat[c(2:4)]
# to show the row 2, 3, 4, cloumn 1 vaules ( x values)
cbind(x, lab)
# to put column x and column lab together.



x
y


# Ex 2: Using the object xy.mat and not making any new assignments (don't use <-),
# graph y2 versus x, omitting the 4th row, and with axis labels "y2" and "x"
x; y
plot( y2[-4] ~ x[-4], ylab = "y2", xlab = "x" )





# Ex 3: Suppose y1 and y2 are measures of an outcome at times 1 and 2 for 8 subjects.
#       So cbind(y1,y2) is the 'wide' form of the dataset
#       Create the 'long' form of the dataset, with 16 rows and 3 columns,
#       a column for y, one for time, and one for subject id.
y.long <- rbind( c( y1, y2) ); y.long
rownames( y.long ) <- c("y-value"); y.long
y.time <- rep( c( 1, 2 ), each = 8); y.time
sub.ID <- 1:16; sub.ID
y.mat <- rbind( sub.ID, y.time, y.long ); y.mat
y.mat.t <- t( y.mat ); y.mat.t


### Using data frames and lists
### To use data frames and lists, refer to their components using name$component
### Many functions create as output lists (e.g. lm for regression)

# Create a data frame to work with

xy.fr <- data.frame( x, y1, y2, lab )
xy.fr$x
mean(xy.fr$x)
mean(xy.fr$lab)


