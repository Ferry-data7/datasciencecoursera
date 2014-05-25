# There will be an object called 'iris' in your workspace.
# In this dataset, what is the mean of 'Sepal.Length' for the species virginica?
library(datasets)
data(iris)
s <- split(iris, iris$Species)
mean(iris[iris$Species == "virginica", "Sepal.Length"])

# The following did work
lapply(s, function(x) colMeans(x[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]))
# or
s <- split(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")], iris$Species)
lapply(s, colMeans)
# or
solution_question = tapply(iris$Sepal.Length, list(iris$Species), mean)
# or
solution_question = tapply(iris$Sepal.Length, iris$Species, mean)

# Continuing with the 'mtcars' dataset from the previous Question, 
 #what is the absolute difference between the average horsepower of 4-cylinder 
# cars and the average horsepower of 8-cylinder cars?
abs(mean(mtcars[mtcars$cyl == 4, "hp"])-mean(mtcars[mtcars$cyl == 8, "hp"]))

