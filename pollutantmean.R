pollutantmean <- function(directory, pollutant, id = 1:332) {
    id <- as.integer(id)
    pollutant <- as.character(pollutant)
    directory <- as.character(directory)
    files_full <- list.files(directory, full.names = TRUE) #creates a list of files
    data <- data.frame() #creates an empty data frame
    for (i in id) {
        # loops through the files, rbinding them together
        data <- rbind(data, read.csv(files_full[i]))
    }
    if (pollutant == "sulfate") {
        data_subset <- subset(data, data$sulfate == sulfate) #subsets the 'sulfate' argument
        mean(data_subset$sulfate, na.rm = TRUE) #identifies the mean of the subset without the NAs
    }
    else if (pollutant == "nitrate") {
        data_subset <- subset(data, data$nitrate == nitrate) #subsets the 'nitrate' argument
        mean(data_subset$nitrate, na.rm = TRUE) #identifies the mean of the subset without the NAs
    }
}

