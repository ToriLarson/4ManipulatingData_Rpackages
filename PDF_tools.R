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

#




# same -> [[]] - are used with lists, [] - are related to vectors
pagespaces = strsplit(pdfpages," ")
strsplit(pdfpages, " ")[[5]][1]
page5[1]
pagespaces[[5]][1]
pagebreaks = strsplit(pdfpages,"\n")

# creating variable of strstring-ed page 3
pdfpage3 <- pagebreaks[[3]]


