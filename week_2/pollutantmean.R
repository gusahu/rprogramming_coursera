    ##########################################
    # Week 2: Programming Assigment 1 - part 1
    ##########################################
    
    rm(list = ls())
    # setwd
    setwd("/Users/gusahu/Google Drive/Online_courses/r_programming/rprogramming_coursera/week_2")

    pollutantmean <- function(directory, pollutant, id = 1:332) {
      means <- c()
      for (station in id) {
        path_file <- paste0(getwd(), "/", directory, "/", sprintf("%03d", station), ".csv", sep =  "")
        station_data <- read.csv(path_file)
        variable <- station_data[pollutant]
        means <- c(means, variable[!is.na(variable)])
      }
      mean(means)
    }