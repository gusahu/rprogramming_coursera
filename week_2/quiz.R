    #########################
    # Week 2: quiz 1 
    #########################
    
    # Suppose I define the following function in R
    cube <- function(x, n) {
      x^3
    }
    
    cube(3)    

    # 2. The following code will produce a warning in R.  
    
    x <- 1:10
    if(x > 5) {
      x <- 0
    }
    
    # 3. Consider the following function
    f <- function(x) {
      g <- function(y) {
        y + z
      }
      z <- 4
      x + g(x)
    }
    
    z <- 10
    f(3)

    # Consider the following expression:
    x <- 5
    y <- if(x < 3) {
      NA
    } else {
      10
    }    
    
    # What is the value of 'y' after evaluating this expression?
    # 10
    
    # Consider the following R function
    h <- function(x, y = NULL, d = 3L) {
      z <- cbind(x, d)
      if(!is.null(y))
        z <- z + y
      else
        z <- z + f
      g <- x + y / z
      if(d == 3L)
        return(g)
      g <- g + 10
      g
    }
    
    # 5. Consider the following R function Which symbol in the above function
    # is a free variable?
    
    
    
    
    
    
    
    
    