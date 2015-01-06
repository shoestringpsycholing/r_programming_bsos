library(dplyr) # put library statements at top

# calculator
2 + 2 
2 * 43
23/5
2^3

# assignment
x <- 9534 * 7389
x

# functions
# functionname(arg1, arg2, ...)
# NEED PARENS!
objects() # display objects in workspace
ls()      # same as objects()

# workspace
# rm("x")
# rm(list = ls())

# help
# ?
# ??
# help()
# help.search()

# packages
?install.packages
#install.packages("dplyr") # install dplyr
library(dplyr) # loads package
require(dplyr) # doesn't throw error inside a function

# saving workspaces
# save()
save(x, file = "x.RData")
rm(x)
ls()
load("x.RData")
ls()
x
# save.image()
save.image()
save.image("myworkspace.RData")

# quitting
# q()
q("yes") # quit and save workspace as .RData
q("no")  # what I always do

# working directories
getwd()
# setwd()

# sleep data
?sleep

# some convenient ways to look at data
head(sleep, 10)
tail(sleep)
sleep
summary(sleep)

# function excursion #1: specifying arguments
?head
head(x = sleep, n = 10)
head(sleep, 10)
head(n = 10, x = sleep)
head(10, sleep)
length(sleep)

# function excursion #2: generics
?summary
?summary.data.frame

summary <- 10
summary        # can assign object names that already exist!
summary(sleep) 

# package excursion #2: package conflicts
# name conflicts can happen
# defaults to MOST RECENT PACKAGE LOADED
# if "dothis" is a function, 
# dothis() will DEFAULT to the dothis() from package2
# specify with package1::dothis() or package2::dothis()

# data structures
# vectors
# one-dimensional
# SINGLE TYPE

# making vectors
# c
c(1, 2, 3, 4)
c(1, 3, 4, 2)  # ORDER MATTERS

c(1, "pie") # coersion happens
c(1, pi)    # both numbers!

y <- c(1, 2, 3, pi)
length(y)

z <- c(3, 6, 23)

c(y, z)

yz <- c(y, z)

mean(yz)

min(yz)
max(yz)

x <- 1:100  # : is shortcut for sequence

# matrix: two-dimensional vector
?matrix
matrix(1:25, ncol = 5)
matrix(1:25, ncol = 5, byrow = FALSE)
matrix(1:25, ncol = 5, byrow = TRUE)  # still needs to be same type

# arrays: more dimensions!!!
?array
array(1:27, dim = c(3, 3, 3))

# lists: can be heterogeous
list(1, "pie", pi, x)

# data.frame : special kind of list
# two dimensional
# ADVANCED: data.table
sleep
# columns = vectors
# have names
# columns all have to have the same length!

# subsetting
# use [ ] or [[ ]]
yz
yz[1]
yz[4]
yz[c(4, 3)]

sleep[ , ] # sleep[ROWS, COLUMNS]

# sleep[ , ] == sleep  (all rows, all columns)
sleep[1:5, ]
sleep[ , c(3, 1)]

colnames(sleep)
sleep[1:5, "extra"]
sleep[1:5, c("extra", "ID")]

colnames(sleep)[3]

mynames <- colnames(sleep)
mynames[3]

x <- matrix(1:25, ncol = 5)
class(x)

mylist <- list(1, "pie", pi, x)
mylist[1]

class(mylist[4])
mylist[4]
class(mylist[[4]])
mylist[[4]]

sleep[[1]]  # first column
sleep[1]    # includes the container

sleep$extra  # same as sleep[[1]] and sleep[["extra"]]
sleep[[1]]
sleep[["extra"]]

# creating data frames
mydf <- data.frame(col1 = 1:10, col2 = 3, col3 = c("hello", "goodbye"))
mydf


