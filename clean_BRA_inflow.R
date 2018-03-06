library('dplyr')

library(readr)
BRA_inflow <- read_csv("~/FDIcleanR/raw_data/FDIdata.xlsx - inflows (BRA).csv")

# Rename columns I plan on using to provide structure
rename(BRA_inflow, Country = Brazil)
rename(BRA_inflow, '2001' = X7, '2002' = X8, '2003' = X9, '2004' = X10, '2005' = X11, '2006' = X12, '2007' = X13,
       '2008' = X14, '2009' = X15, '2010' = X16, '2011' = X17, '2012' = X18)


# Output cleaned dataset as CSV
write.csv(BRA_inflow, '~/FDIcleanR/cleaned_data/BRA_inflow.csv')

