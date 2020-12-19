    ##########################################
    # Week 2: Programming Assigment 1 - part 2
    ##########################################
    
    rm(list = ls())
    # setwd
    setwd("/Users/gusahu/Google Drive/Online_courses/r_programming/rprogramming_coursera/week_2")
    
    complete <- function(directory, id = 1:332) {
      outcome <- data.frame(id = numeric(0), nobs = numeric(0))
      for(station in id) {
        path_file <- paste0(getwd(), "/", directory, "/", sprintf("%03d", station), ".csv", sep =  "")
        station_data <- read.csv(path_file)
        variable <- station_data[(!is.na(station_data$sulfate)), ]
        variable <- variable[(!is.na(variable$nitrate)), ]
        nobs <- nrow(variable)
        outcome <- rbind(outcome, data.frame(id = station, nobs = nobs))
      }
      outcome
    }