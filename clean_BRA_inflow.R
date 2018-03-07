library(dplyr)
library(readr)

# Import CSV
BRA_inflow <- read_csv('~/FDIcleanR/raw_data/FDIdata.xlsx - inflows (BRA).csv')

# Rename country and year columns
BRA_inflow <- rename(BRA_inflow, Country = X5, '2001' = X7, '2002' = X8, '2003' = X9, '2004' = X10, '2005' = X11, '2006' = X12, '2007' = X13,
       '2008' = X14, '2009' = X15, '2010' = X16, '2011' = X17, '2012' = X18)

# Drop unnecessary columns (do not do if regional FDI flows are required)
BRA_inflow <- subset(BRA_inflow, select = -c(Brazil, X2, X3, X4, X6) )

# Drop rows without a country value (regional data or leftover from formatting)
BRA_inflow <- filter(BRA_inflow, is.na(Country) == FALSE)

# Output cleaned dataset as CSV
write.csv(BRA_inflow, '~/FDIcleanR/cleaned_data/BRA_inflow.csv')