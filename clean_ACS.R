library(tidyverse)

# Import raw data as CSV (nt_ACS = not transposed CSV)
nt_ACS <- read_csv('~/FDIcleanR/raw_data/acs5year.csv')

# Removes worthless before transposing into columns
names(nt_ACS)[1] <- c('future_column')
names(nt_ACS)[2] <- c('Alameda_City')
nt_ACS <- filter(nt_ACS, is.na(future_column) == FALSE )
nt_ACS <- filter(nt_ACS, is.na(Alameda_City) == FALSE)

# Tranpose data so variables as columns, observations as rows
ACS <- t(nt_ACS)

# Write tidied dataframe to CSV
write.csv(ACS, '~/FDIcleanR/cleaned_data/messy_ACS_transposed.csv')

# Reload dataframe to get corect column names
ACS <- read_csv('~/FDIcleanR/cleaned_data/messy_ACS_transposed.csv')
