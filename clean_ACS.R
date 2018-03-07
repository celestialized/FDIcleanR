library(readr)
library(dplyr)

# Import raw data as CSV
ACS <- read_csv('~/FDIcleanR/raw_data/acs5year.csv')

# Remove duplicate "rows" before transposing into columns
names(ACS)[1] <- c('future_column')
ACS <- filter(ACS, is.na(future_column) == FALSE )

# Tranpose data so variables as columns, observations as rows
# ACS <- t(ACS)

# Write tidied dataframe to CSV
write.csv(ACS, '~/FDIcleanR/cleaned_data/ACS.csv')