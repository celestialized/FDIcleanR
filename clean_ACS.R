library(readr)

# Import raw data as CSV
ACS <- read_csv('~/FDIcleanR/raw_data/acs5year.csv')

ACS <- t(ACS)
