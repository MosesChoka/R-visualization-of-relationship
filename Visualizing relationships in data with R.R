# Create x and y variable values indicating house price (y) and house size in sqft (x)
x_house_sqft<-c(4000,3000,2000,1000,5000,12000,14000,2500,2600,2400,6000,3100,4200,4500,5000)
y_house_price<-c(400000,290000,170000,120000,480000,150000,220000,290000,320000,210000,550000,385000,390000,580000,450000)

# Use the plot() function to generate a scatter plot / line plot for this data
plot(x_house_sqft, y_house_price)
plot(x_house_sqft, y_house_price, xlab = "Size (sqft)", ylab = "Price (USD$)", main = "House Price vs. Square Footage")

# Generate and plot a line of best fit using the lm() linear model function
abline(lm(y_house_price ~ x_house_sqft))

# Show number of users for various programming languages with a bar chart
num_users<-c(2,4,3,1,0.5)
prog_lang<-c("Java","R","Python","C++","Other")

# Plot users for programming languages via barplot() function
barplot(num_users,
        names.arg = prog_lang,
        xlab = "Programming Languages",
        ylab = "Number of Users",
        main = "Number of Users for Various Programming Languages")

# Show number of users for various programming languages with a pie chart (same values as used above)
num_users<-c(2,4,3,1,0.5)
prog_lang<-c("Java","R","Python","C++","Other")

# Plot users for programming languages via barplot()
pie(num_users,
    labels = prog_lang,
    main = "Number of Users for Various Programming Languages")

# create a vector of students grades
student_grades<-c(51,53,64,67,68,71,73,76,78,79,81,85,88,91,95)
hist(student_grades)
hist(student_grades, breaks = 3)
hist(student_grades, breaks = 5)

# create a dataframe for ggplot
house_df<-data.frame(x_house_sqft,y_house_price)

# Basic scatter plot
ggplot(house_df, aes(x=x_house_sqft,y=y_house_price))+geom_point()

# 5-number summary
dataset_fivenum<-c(1,2,3,4,5,6,7,8,9,10)

# determine the 5-number summary using the fivenum() function
fivenum(dataset_fivenum)
boxplot(dataset_fivenum)

# correlation and covariance
x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(1,2,3,4,5,6,7,8,9,10)

# determine correlation and covariance using cor() and cov() function
cov(x,y)
cor(x,y)

# plot to visualize
plot(x,y,pch=16)
abline(lm(y~x))

p<-c(1,2,3,4,5,6,7,8,9,10)
q<-c(-10,-9,-8,-7,-6,-5,-4,-3,-2,-1)
cov(p,q)
cor(p,q)
plot(p,q,pch=14)
abline(lm(q~p))

r<-c(1,2,3,4,5,6,7,8,9,10)
s<-c(-10,-4,-9,-7,-5,-6,-4,-4,-2,-1)
cov(r,s)
cor(r,s)
plot(r,s,pch=14)
abline(lm(s~r))

l<-C(1,2,3,4,5,6,7,8,9,10)
n<-c(0.6,1.8,1.3,0.9,0.1,0.5,.75,.65,1.5,1.1)
cov(l,n)
cor(l,n)
plot(l,n,pch=16)
abline(lm(n~l))

x_house_sqft<-c(4000,3000,2000,1000,5000,12000,14000,2500,2600,2400,6000,3100,4200,4500,5000)
y_house_price<-c(400000,290000,170000,120000,480000,150000,220000,290000,320000,210000,550000,385000,390000,580000,450000)
cov(x_house_sqft,y_house_price)
cor(x_house_sqft,y_house_price)
plot(x_house_sqft,y_house_price,pch=16)
abline(lm(y_house_price~x_house_sqft))

# lets look into a real dataset using R built-in dataset
data(mtcars)
mtcars
cor(mtcars$hp,mtcars$cyl)
cor(mtcars$hp,mtcars$disp)
cor(mtcars$hp,mtcars$mpg)

# lets filter our dataframe to only include the first 7 variables
mtcars_filtered<-mtcars[1:7]
mtcars_filtered

# we can also find the correlation coefficients matrix
# by using the same cor() method on an entire matrix or dataframe
mtcars_cor_matrix<-cor(mtcars_filtered)
mtcars_cor_matrix
mtcars_cov_matrix<-cov(mtcars_filtered)
mtcars_cov_matrix

# install and load corrplot package to help with correlation matrix visualization if needed
install.packages("corrplot")
library(corrplot)

#generate the correlation matrix, print out the matrix to visualize
mtcars_cor_matrix<-cor(mtcars_filtered)
mtcars_cor_matrix
mtcars_cov_matrix<-cov(mtcars_filtered)
mtcars_cov_matrix

# Generate improved visualization using the corrplot() function
corrplot(mtcars_cor_matrix,)
corrplot(mtcars_cor_matrix,method = "square")
corrplot(mtcars_cor_matrix,method = "pie")
corrplot(mtcars_cor_matrix,method = "ellipse")
corrplot(mtcars_cor_matrix,method = "shade")
corrplot(mtcars_cor_matrix,method = "color")
corrplot(mtcars_cor_matrix,method = "number")
corrplot(mtcars_cor_matrix,method = "square", type = "upper")
corrplot(mtcars_cor_matrix,lower = "number", upper = "pie")

# Heatmaps
data(mtcars)
mtcars
mtcars_filtered<-mtcars[1:7]
mtcars_filtered
mtcars_cor_matrix<-cor(mtcars_filtered)
mtcars_cor_matrix

# Use the heatmap() function to visualize correlation matrix using a heatmap
heatmap(mtcars_cor_matrix)
heatmap(mtcars_cor_matrix, symm = TRUE, Rowv = NA, Colv = NA, xlab = "X label here!", ylab = "Y label here!", main = "My main table!")

mtcars
x<-as.matrix(mtcars)
heatmap(x, Rowv = NA, Colv = NA)
heatmap(x, Rowv = NA, Colv = NA, scale = "column")

# make sure you have gplots package installed to use heatmap.2
install.packages("gplots")
library(gplots)

# Generate heatmap using heatmap.2
heatmap.2(mtcars_cor_matrix)
heatmap.2(mtcars_cor_matrix, symm = TRUE, density.info = "none", trace = "none",cellnote = round(mtcars_cor_matrix,2), notecol = "black",notecex = "1.1",dendrogram = "row")

# lets look into a real dataset using mtcars
data("mtcars")

# lets filter our dataframe to only include the first 4 variables
mtcars__filtered<-mtcars[1:4]

# generate pairplot
pairs(mtcars__filtered)
pairs(mtcars__filtered,pch=19,col="orange", lower.panel = panel.smooth, upper.panel = panel.smooth)

# packages need to be installed
install.packages("GGally")
install.packages("ggplot2")

# load ggplot2 and GGally packages
library("ggplot2")
library("GGally")

# apply ggpairs() function
ggpairs(mtcars__filtered)