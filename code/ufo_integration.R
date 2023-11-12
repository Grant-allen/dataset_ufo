# Mike Colbert
# 11/07/2023
# Integrate monthly UFO data into a single file

rm(list=ls())

# Load libraries
# library(readr)

setwd("C:/Users/grant/Desktop/by_month")
getwd()

csv_files <- list.files(pattern = ".csv")

combined_data <- data.frame()

for (file in csv_files) {
  data <- read.csv(file)
  combined_data <- rbind(combined_data, data)
}

# Save the combined data to a CSV file with UTF-8 encoding and without row numbers
write.csv(combined_data, "combined_data.csv", row.names = FALSE, fileEncoding = "UTF-8")


