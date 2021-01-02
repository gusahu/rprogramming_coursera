    ############################
    # Week 3: General practices 
    ############################
    
    # Construct a 5x6 matrix
    X <- matrix(rnorm(30), nrow=5, ncol=6)
    
    # Sum the values of each column with `apply()`
    apply(X, 1, sum)
    
    X
    
    # Create a list of matrices
    MyList <- list(A = matrix(1:9, 3, 3), B = matrix(4:15, 3, 2), C = matrix(8:10, 3, 2))
  
    # Extract the 2nd column from `MyList` with the selection operator `[` with `lapply()`
    lapply(MyList,"[", , 2)
    
    # Extract the 1st row from `MyList`
    lapply(MyList,"[", 1, )
    
    # Extract all the elements og the third line of B
    lapply(MyList, "[", 1, 2)
    
    # Create a new list
    x <- list(a = 1:4 , b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
    lapply(x, mean)
   
    x <- 1:4
    lapply(x, runif)
    
    y <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
    lapply(y,"[", 1, )
    lapply(y,"[", 1, 2)
    
    f <- function(elt)
    {
      elt[1, ]
    }
    lapply(y, f)
    
    sapply(y, mean)
    lapply(y, mean)
    
    # Use split and lapply and sapply
    x <- c(rnorm(10), runif(10), rnorm(10, 1))
    f <- gl(3, 10)
    split(x, f)
    lapply(split(x,f), mean)
    sapply(split(x,f), mean)
    
    # Splitting a Data Frame
    library(datasets)
    head(airquality)
    s <- split(airquality, airquality$Month)
    str(s)
    lapply(s, function(x) {
      colMeans(x[, c("Ozone", "Solar.R", "Wind")])
    })
    sapply(s, function(x) {
      colMeans(x[, c("Ozone", "Solar.R", "Wind")],
               na.rm = TRUE)
    })
    

    library(swirl)
    swirl()
    
    # tapply() is an interesting function to split our data into groups based on
    # the value of some variable
    
    
    
    
    
    
    
    
    