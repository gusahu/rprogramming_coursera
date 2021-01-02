    ############################
    # Week 3: Quiz
    ############################
    
    # 1. Take a look at the 'iris' dataset that comes with R. 
    # The data can be loaded with the code:
    library(datasets)
    data(iris)
    tapply(iris$Sepal.Length, iris$Species, mean)

    
    # 2. Continuing with the 'iris' dataset from the previous Question, 
    # what R code returns a vector of the means of the variables 
    # 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
    apply(iris[, 1:4], 2, mean)
    
    # 3. Question 3 Load the 'mtcars' dataset in R with the following code
    data("mtcars")
    tapply(mtcars$mpg, mtcars$cyl, mean)
    with(mtcars, tapply(mpg, cyl, mean))
    sapply(split(mtcars$mpg, mtcars$cyl), mean)
    
    # 4. 
    
    cyhp <- tapply(mtcars$hp, mtcars$cyl, mean)
    abs48 <- abs(cyhp[1] - cyhp[3])
    
    # 5. if you run
    debug(ls)
    ls
