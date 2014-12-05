#
# R program file Cleaning_HPC.R
# Date file "household_power_consumption.txt" must be located in the same directory
#
# This program selects the data for the dates in question, cleans it, and then writes it to
#   "household_power_consumption_cleaned.txt"
#
hpc<-read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
# 
#   select subset needed for project
#
hpc<-hpc[(hpc$Date=="1/2/2007") | (hpc$Date=="2/2/2007"),]
if (any(hpc == "?")) {
    stop("Data set contains unknowns - further cleaning required", call. = FALSE)
} else {    
    #
    #   concatenate date and time strings into column Date ...
    #
    hpc$Date <- mapply(paste, hpc$Date, hpc$Time)
    #
    #   ... convert the resulting string into POSIXlt ...
    #
    hpc$Date <- strptime(hpc$Date,"%d/%m/%Y %T")
    #
    #   ... drop the Time column and convert remaining columns to numeric
    #
    hpc <- hpc[-which(names(hpc) == "Time")]
    colnames(hpc)[1] <- "datetime"
    for (i in 2:ncol(hpc)) {
        hpc[colnames(hpc)[i]] <- sapply(hpc[colnames(hpc)[i]],as.numeric) 
    }
    write.csv(hpc, "household_power_consumption_cleaned.txt", row.names=FALSE)
}