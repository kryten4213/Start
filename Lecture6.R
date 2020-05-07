library(stringr)
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

#1.1
grep('e{1}e', levels(gDat$country), value = TRUE)

#2.1
