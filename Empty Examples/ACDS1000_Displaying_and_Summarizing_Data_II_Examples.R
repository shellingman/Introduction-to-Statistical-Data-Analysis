##Displaying and Summarizing Data##
##ACDS 1000##

rm(list = ls()) #Remove all objects from the workspace

data("mtcars") #Imports mtcars data from base R
?mtcars

####Mean Example####

?mean() #Get help
mean(mtcars$hp) #Average horsepower

##Test scores example 1##

Scores <- c(93,84, 86, 78, 95, 81, 72, 93, 84, 78, 45, 71, 78, 95, 88)



####Median Example####

?median() #Get help
median(mtcars$hp) #median horsepower

##Test scores example 2##
#sort()




##Histograms##

hist(mtcars$hp, main = "Histogram of Horsepower", xlab = "Horsepower")  # Draw histogram
abline(v = mean(mtcars$hp),                       # Add line for mean
       col = "red",
       lwd = 3)
abline(v = median(mtcars$hp),                       # Add line for median
       col = "blue",
       lwd = 3)
text(x =  250,                   # Add text for mean
     y =  8,
     paste("Mean =", mean(mtcars$hp)),
     col = "red",
     cex = 1)
text(x =  250,                   # Add text for median
     y =  7,
     paste("Median =", median(mtcars$hp)),
     col = "blue",
     cex = 1)



##Test Scores Example 3##


####Quartiles and Tertiles####
?quantile #help

#Quantile of HP
quantile(mtcars$hp)

#Tertiles of HP
quantile(mtcars$hp, probs = seq(0, 1, 1/3))



#Exams Example#


####Trimmed Mean####

#10% trimmed mean#
mean(mtcars$hp, trim=0.1)


#Exams Example 4#




####Sample Proportions####

#Proportion of cars with 6 cylinders#
sum(as.numeric(mtcars$cyl == 6))/nrow(mtcars)


#Colours Example 5#
# c('red', 'red', 'blue', 'green', 'green', 'orange', 'red', 'orange', 'yellow', 'green')





####Sample Variance and Standard Deviation####
?var()
?sd()

#Variance of HP#
var(mtcars$hp)
sd(mtcars$hp)


#Test Scores Example 6#


#Boxplot of the horsepower in base R#

boxplot(mtcars$hp, ylab = "Horsepower", main = "Boxplot of Horsepower")

