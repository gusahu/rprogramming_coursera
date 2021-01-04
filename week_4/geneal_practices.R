    ############################
    # Week 4: General practices 
    ############################
    
    
    # str function
    x <- mean(c(2:10))
    str(x)
    str(mean)
    library(datasets)
    head(airquality)
    str(airquality)
    
    # simulation: generating random numbers
    x <- c(1:100)
    dnorm(x, mean = 0, sd = 1, log = FALSE)
    pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
    qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
    rnorm(n, mean = 0, sd = 1)
    
    # Setting the random number seed
    set.seed(1)
    rnorm(5)
    
    # Simulating a Linear Model
    # beta0 = 0.5 and beta1 = 2
    
    ## always set your seed!
    set.seed(20)
    
    ## simulate predictor variable
    x <- rnorm(100)
    
    ## simulate the error term
    e <- rnorm(100, 0, 2)
    
    ## compute the outcome via the model 
    y <- 0.5 + 2*x + e
    
    summary(y)
    plot(x, y)
    
    ## we can assume that x is binary instead of having a normal distrubbution
    
    set.seed(10)
    x <- rbinom(100, 1, 0.5)
    str(x)
    e <- rnorm(100, 0, 2)
    y <- 0.5 + 2*x + e
    summary(y)
    plot(x,y)
    
    # Random Sampling
    set.seed(1)
    sample(1:10, 4)
    sample(1:10, 4)
    
    # sampling letters
    set.seed(1)
    sample(letters, 5)
    
    # do a random permutation
    sample(1:10)
    sample(1:10)
    
    # sample w/replacement
    sample(1:10, replace = FALSE)
    
    # sample using data frame
    library(datasets)
    data(airquality)
    head(airquality)
    
    ## creating a index vector indexing the rows
    
    set.seed(20)
    idx <- seq_len(nrow(airquality)) # create index vector
    
    # sample from the index vecto
    samp <- sample(idx, 6)
    airquality[samp,]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    