    ###########################################
    # Week 2: Programming Assigment 1 - part 3
    ##########################################
    
    rm(list = ls())
    # setwd
    setwd("/Users/gusahu/Google Drive/Online_courses/r_programming/rprogramming_coursera/week_2")
    
    source("complete.R")
    corr <- function(directory, threshold = 0) {
      corr_outcome <- numeric(0)
      complete_cases <- complete(directory)
      complete_cases <- complete_cases[complete_cases$nobs >= threshold, ]
      if(nrow(complete_cases) > 0) {
        for (station in complete_cases$id) {
          path_file <- paste0(getwd(), "/", directory, "/", sprintf("%03d", station), ".csv", sep =  "")
          station_data <- read.csv(path_file)
          variable <- station_data[(!is.na(station_data$sulfate)), ]
          variable <- variable[(!is.na(variable$nitrate)), ]
          sulfate_data <- variable["sulfate"]
          nitrate_data <- variable["nitrate"]
          corr_outcome <- c(corr_outcome, cor(sulfate_data, nitrate_data ))
        }
      }
      corr_outcome
    }
    
    
    
    
    
    
    
    
    
        