# using this library
library(pdftools)
# assigning a varibale
Hotelpdf <- pdf_text("HotelReview12.31.17.pdf")
# printing the named variable
Hotelpdf
## extract text vector
text <- pdf_text("HotelReview12.31.17.pdf")
## print text from page 1
cat(text[1])
p3 = strsplit(text[3], "\n")

stripWhitespace(p2[[1]][4])
strsplit()

strsplit(stripWhitespace(p3[[1]][16]), " ")
strsplit(stripWhitespace(p3[[1]][18]), " ")
