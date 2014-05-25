corr <- function(directory, threshold = 0) {
    directory <- as.character(directory)
    files_full <- list.files(directory, full.names = TRUE) #creates a list of files
    corrv <- numeric()
    for (i in 1:length(files_full)) { 
        data <- read.csv(files_full[i]) # loops through the files, finding complete cases
        datagood <- datagood <-na.omit(data)
        nobs <- nrow(datagood)
        if (nobs > threshold) {
            nitrate <- datagood$nitrate
            sulfate <- datagood$sulfate
            corrv <- append(corrv, cor(nitrate, sulfate))
        }
    }
    return(corrv)
}   


