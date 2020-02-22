setwd("F://R//files")

books  <- read.csv("books.csv")
View(books)

books <- books[,-2]

install.packages("recommenderlab", dependencies = T)
#install.packages("Matrix")
library(recommenderlab)
library(caTools)
#realrating matrix in order to build recommendation engine

book <- as(as.matrix(books),"realRatingMatrix")
attributes(book)
#popularity based

movies_pop <- Recommender(books, method = "POPULAR")
