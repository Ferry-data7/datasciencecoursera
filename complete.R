complete <- function(directory, id = 1:332) {
    id <- as.integer(id)
    directory <- as.character(directory)
    files_full <- list.files(directory, full.names = TRUE) #creates a list of files
    nobs_vector <- c()
    for (i in id) { 
        data <- read.csv(files_full[i]) # loops through the files, finding complete cases
        datagood <- complete.cases(data)
        nobs <- sum(datagood)
        nobs_vector <- c(nobs_vector, nobs)
    }
    complete_final <- data.frame(id, nobs_vector)
    names(complete_final) <- c("id","nobs") 
    return(complete_final) 
}   


