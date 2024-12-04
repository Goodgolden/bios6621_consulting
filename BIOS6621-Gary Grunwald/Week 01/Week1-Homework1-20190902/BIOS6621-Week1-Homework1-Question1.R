### BIOS6621 Homework1 Question1
### Basic graphing
x <- c(1,3,4,6,9,10,11,14)
y1 <- c(102,101,89,92,81,80,75,72)
y2 <- c(88,85,81,80,76,71,66,64)
plot( x, y1, xlab = 'x label', ylab = 'y label', pch = 19, 
      type = "b", cex = 0.7, col = "red", lty = 4, lwd = 3,
      xlim = c(0, 15), ylim = c(60, 110) )
points( x, y2, pch = "o", cex = 1, col = "blue", lty = 1, 
      type = "b", lwd = 3 )

### Ex 1:  Add a red horizontal line at mean(y1) and a blue horizontal line at mean(y2)
abline( h = mean(y1), cex = 0.7, lty = 1, col = "red", lwd = 3)
abline( h = mean(y2), cex = 0.7, lty = 1, col = "blue", lwd = 3)



### Ex 2:  Move the legend up on the graph so it looks better
###              and add red and blue points in front of the text
legend( "topright", leg = c("Female", "Male"), 
        text.col = c("red", "blue"), col = c("red", "blue"),
        bty = "n", pch = c(19, 111), cex = c(1, 1) )


### Ex 3:  Explain what R statements or options would create each of the features in
###              Figure 2 of the Wyatt et al. paper


#############################
### Data input from Excel
#############################

### The easiest way is to save your Excel file as a type=.csv file.  Then in R use

case1 <- read.csv( "C:/Documents and Settings/Gary/Desktop/Gary 09-15-2008/BIOS 6631/R lesson 1 -- graphs/Case study #1 R.csv" )

### R can be picky if the filename path goes to a second line.  I horizontally expand the notepad file.

### Ex 4: Use the R function 'hist' to make a histogram of the values at time 30.
###       Use options to get a good number of cells, good titles and labels, etc.
