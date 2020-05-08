library(stringr)
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

#1.1
grep('e{1}e', levels(gDat$country), value = TRUE)

#2.1
files <- dir()
grep('.R$', files, value = TRUE)

#3.1
(strings <- c("^ab", "ab", "abc", "abd", "abe", "ab 12"))
grep("ab.", strings, value = TRUE)
grep("ab[c-e]", strings, value = TRUE)
grep("ab[^c]", strings, value = TRUE)
grep("^ab", strings, value = TRUE)
grep("\\^ab", strings, value = TRUE)
grep("abc|abd", strings, value = TRUE)
gsub("(ab) 12", "\\1 34", strings)

it_land <- grep(("[ITit]"), levels(gDat$country), value=TRUE)
it_land <- grep(("land$"), it_land, value = TRUE)
it_land <- gsub(("land"), ("\\1LAND"), it_land)
it_land

#4.1
o_conts <- grep(("o"), levels(gDat$continent), value = TRUE, ignore.case = TRUE)
o_conts


