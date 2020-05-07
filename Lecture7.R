#1.1
pounds_to_grams <- function(pounds) {
  grams <- pounds*453.592
  return(grams)
}
pounds_to_grams(3.75)   #Ans: 1700.97g

#2.1
get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ^ 3.63
  return(mass)
}#estimates body mass in kg of a theropod based on its body length in meters
#2.2
get_mass_from_length_theropoda(16) #Spinosaurus
#Ans: 17150.56 kg
#2.3
get_mass_from_length <- function(length, a, b) {
  mass <- a * length ^b
  return(mass)
}#estimates body mass in kg based on body length (m) & allometric values a & b
get_mass_from_length(26, 214.44, 1.46) #some sauropod
#Ans: 24955.54 kg

#3.1
get_mass_given_length <- function(length, a=39.9, b=2.6) {
  mass <- a * length ^b
  return(mass)
}#estimates body mass in kg based on body length (m) & allometric values a & b
get_mass_given_length(22,214.44,1.46) #some sauropod
#Ans: 19554.33 kg
#3.2
get_mass_given_length(16) #unknown dinosaur
#Answer: 53911.93 kg




