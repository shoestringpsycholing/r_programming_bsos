# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R
# use read.csv()  (read.delim() for tab-delimited)
# 1. Open in Excel
# 2. Save as... CSV

# mydata <- read.csv("filename.csv")
# mydata <- read.delim("filename.txt")
# all wrappers for read.table
?read.table
# sep = ","  == CSV
# sep = "\t"  == tab-delim
# header = TRUE

# SPSS
# library(foreign)
# read.spss()

minpair <- read.csv("scottdata/CognitionPaperFinalData.csv")

# 2. Peek at the top few rows
head(minpair)

# 3. Peek at the top few rows for only a few columns
head(minpair[1:5])
head(minpair[, 1:5])
length(minpair)
tail(minpair)

# 4. How many rows does your data have?
nrow(minpair)
length(minpair$Corpus)

# 5. Get a summary for every column
summary(minpair)

# 6. Get a summary for one column
summary(minpair$Corpus)       # 
summary(minpair[, "Corpus"])  # can do a lot of columns
summary(minpair[ , c("Corpus", "System", "Pair")])
summary(minpair[["Corpus"]])
summary(minpair["Corpus"])
summary(minpair[, 1])
summary(minpair[[1]])
summary(minpair[1])

# 7. Are any of the columns giving you unexpected values?
#    - missing values? (NA)


# 8. Select a few key columns, make a vector of the column names
mycols <- c("Corpus", "System", "Pair")
mycolnums <- c(1:4)
colnames(minpair)[mycolnums]
summary(minpair[, mycols])

# 9. Create a new data.frame with just that subset of columns
#    from #8
#    - do this in at least TWO different ways
new.minpair <- minpair[, mycols]
new.minpair <- data.frame(minpair[, mycols]) # helps ENSURE that it's a data frame
head(new.minpair)

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from #8
top <- head(minpair, 10)
bottom <- tail(minpair, 10)
top.and.bottom <- rbind(top, bottom)
t.and.b2 <- minpair[c(1:10, 625:634), ]  # least robust to changes
nrows <- nrow(minpair)
t.and.b2 <- minpair[c(1:10, nrows-9:nrows), ]

# 11. Create a new data.frame that is a random sample of half of the rows.
?sample
minpair.half <- minpair[sample(1:nrow(minpair), nrow(minpair)/2), ]
number.of.rows <- nrow(minpair)
sample.rows <- sample(number.of.rows, 3)
minpair.sample <- minpair[sample.rows, ]

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it


# 13. Repeat #12 for TWO more comparisons
#     - ALTERNATIVELY, if correlations are more interesting,
#       do those instead of t-tests (and try both Spearman and
#       Pearson correlations)


# 14. Save all results from #12 and #13 in an .RData file


# 15. Email me your version of this script, PLUS the .RData
#     file from #14
