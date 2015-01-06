# 1. Run a t-test with the sleep data set
#   a. save the values as objects/variables first,
#      then supply as arguments to t.test()
#   b. try skipping that step and referring to the values directly
group1 <- sleep$extra[1:10]
group2 <- sleep$extra[11:20]

group1 <- sleep$extra[sleep$group == 1]
group2 <- sleep$extra[sleep$group == 2]

t.test(group1, group2)

# 2. Do the same thing with the "iris" data set
#    - compare sepal width
#    - all three pairwise comparisons


# 3. Do the same (run a t-test) thing again on "women" data
#    - compare the two columns
#    - (yes, this doesn't make much sense as a comparison,
#      it's just a programming exercise)
t.test(women[1], women[2])
t.test(women[[1]], women[[2]])

t.test(women[["height"]], women[["weight"]])

t.test(women$height, women$weight)

# 4. Re-do "sleep" t-test (#1 above) as paired


# 5. Run a true "Student's" t.test for #1


# 6. Try the "formula" method for t.test()
#    a. Read the help
#    b. Look at the "formula" argument
#    c. Try to use that to replicate the results from #1 above
t.test(extra ~ group, data = sleep)

# 7. Run a Wilcoxon Signed Rank test for the comparisons
#    in #1 through #3
#    - use help.search to find a function to do this


# 8. Run a correlation test on the "women" data
#    a. Pearson
#    b. Spearman


# 9. save all results (and only those results!) in an
#    .RData object
#    - try to think of (at least) two ways to do this
sleep.test <- t.test(extra ~ group, data = sleep)
save(sleep.test, file = "results.RData")
# save(sleep.test, otherthing1, otherthing2, file = "bunchofresults.RData")

# 10. clean, comment, and save this script with your answers


# 11. Look at the format of your Homework data set
#     - find a function to read in your data
#     - needed for tonight's Homework
