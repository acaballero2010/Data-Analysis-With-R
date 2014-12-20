# Learning R Basics
# Data Manipulation
# Modifying Data Frames
# Credit: Gaston Sanchez

# Creating toy data frame
StarWars = data.frame(
      Name = c('Anakin', 'Padme', 'Luke', 'Leia'),
      Gender = c('M', 'F', 'M', 'F'),
      Homeland = c('Tatooine', 'Naboo', 'Tatooine', 'Alderaan'),
      Born = c('41.9BBY', '46BBY', '19BBY', '19BBY'),
      Jedi = c('yes', 'no', 'yes', 'no'),
      stringAsFactors = FALSE
)

View(StarWars)
