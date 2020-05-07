w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"

#1.1
w>10
#1.2
"green" %in% colors
#1.3
x>y
#1.4
masses>40

#2.1
age_class = "sapling"
if (age_class == "sapling"){
  y <- 10
}
y

#3.1
age_class = "seedling"
if (age_class=="sapling"){
  y <- 10
}else if (age_class=="seedling") {
  y <- 5
}
y
#3.2
age_class = "adult"
if (age_class=="sapling"){
  y <- 10
}else if (age_class=="seedling") {
  y <- 5
} else {
  y <- 0
}
y



