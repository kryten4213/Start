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

#4
get_mass_from_length_by_name <- function(length, name) {
  if(name=="Stegosauria") {
    mass <- get_mass_from_length(length, 10.95, 2.64)
  }else if (name=="Theropoda") {
    mass <- get_mass_from_length(length, .73, 3.63)
  }else if (name=="Sauropoda") {
    mass <- get_mass_from_length(length, 214.44, 1.46)
  }else {
    mass <- get_mass_from_length(length, NA, NA)
    print("Sorry, I don't know the allometric constants for that taxa.")
  }
  return(mass)
}
#4.1
get_mass_from_length_by_name(10, "Stegosauria") #Ans: 4779.848 kg
#4.2
get_mass_from_length_by_name(8, "Theropoda") #Ans: 1385.286 kg
#4.3
get_mass_from_length_by_name(12, "Sauropoda") #Ans: 8070.685 kg
#4.4
get_mass_from_length_by_name(13, "Ankylosauria") #Ans: Sorry can't compute; NA

#5.1
for (i in 2:16){
  print(i)
}
#5.2
for (i in 1:5){
  print(i*3)
}
#5.3
birds = c('robin', 'woodpecker', 'blue jay', 'sparrow')
for (i in 1:length(birds)){
  print(birds[i])
}
#5.4
radius <- c(1.3, 2.1, 3.5)
areas <- vector(mode = "numeric", length = 3)
for (i in 1:length(areas)){
  areas[i] <- pi * radius[i] ^ 2
}
areas
#5.5
lengths = c(1.1, 2.2, 1.6)
widths = c(3.5, 2.4, 2.8)
areas <- vector(length = 3)
for (i in 1:length(areas)) {
  areas[i] <- lengths[i] * widths[i]
}
areas




