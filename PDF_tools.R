# Using Libray pdftools
library(pdftools)

# assigning a varibale
Hotelpdf <- pdf_text("HotelReview12.31.17.pdf")

## extract text vector
pdfpages <- pdf_text("HotelReview12.31.17.pdf")

# String split with "\n" - creates new lines
pagebreaks = strsplit(pdfpages, "\n")

# Want to focus on page 3 of the vector in the list.
pdfpage3 <- pagebreaks[[3]]

# Deleting lines with no data
datapage = pdfpage3[-(1:10)]

#This is the only way I knew how to delete lines this sparatically spaced
datapage = datapage[-(1:5)]
datapage = datapage[-(2)]
datapage = datapage[-(9)]
datapage = datapage[-(15)]
datapage = datapage[-(21)]
datapage = datapage[-(46:48)]

# Extracted all of the floats from the vectors
datapage = str_extract_all(datapage,"[+-]?([0-9]*[.])?[0-9]+")

# Unlisted datapage to turn all of the separate strings into one big strings
datapagetest = unlist(datapage)

# using cbind.data.frame to create colums from the data - making it 18 columns
Hoteldata = cbind.data.frame(split(datapagetest, rep(1:18, times=length(datapagetest)/18)), stringsAsFactors=F)

# Adding column names
names(Hoteldata) = c("CW_2017_Occ", "CW_2016_Occ", "CW_2017_ADR", "CW_2016_ADR", 
                     "CW_2017_RevPar","CW_2016_RevPar","CW_PercentChange_Occ","CW_PercentChange_ADR","CW_PercentChange_Revpar",
                     "28days_2017_Occ","28days_2016_Occ","28days_2017_ADR","28days_2016_ADR","28days_2017_RevPar","28days_2016_RevPar",
                     "28days_PercentChange_Occ","28days_PercentChange_ADR","28days_PercentChange_Revpar")

# Creating vector called "hotelnames"
hotelnames = c("Total United States","CS_Luxury","CS_Upper Upscale","CS_Upscale","CS_Upper Midscale",
               "CS_Midscale","CS_Economy","CS_Independents","Luxury","Upper Upscale","Upscale","Upper Midscale",
               "Midscale","Economy","Urban","Suburban","Airport","Interstate","Resort","Small Metro/Town","Anaheim",
               "Atlanta","Boston","Chicago","Dallas","Denver","Detroit","Houston","Los Angeles","Miami","Minneapolis",
               "Nashville","New Orleans","New York","Norfolk","Oahu","Orlando","Philadelphia","Phoenix","San Diego",
               "San Francisco","Seattle","St Louis","Tampa/St Petersburg","Washington DC")

# Creating row names
row.names(Hoteldata) = hotelnames

#Viewing my masterpiece
View(Hoteldata)



# same -> [[]] - are used with lists, [] - are related to vectors
pagespaces = strsplit(pdfpages," ")
strsplit(pdfpages, " ")[[5]][1]
page5[1]
pagespaces[[5]][1]
pagebreaks = strsplit(pdfpages,"\n")

# creating variable of strstring-ed page 3
pdfpage3 <- pagebreaks[[3]]
