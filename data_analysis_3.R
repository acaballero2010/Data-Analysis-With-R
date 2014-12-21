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

# Modifying StarWars
# affecting cell 1,1
StarWars[1,1]

# Gender as factor
StarWars[ ,2] = factor(c('male', 'female', 'male', 'female'))

# Modifyig columns using names
# name in upper case
StarWars[ ,"Name"] = toupper(StarWars[ ,"Name"])
View(StarWars)

# Modifying one column using $
# changing jedi column
StarWars$Jedi <- paste(StarWars$Jedi, 
                       'jedi', sep = '_')

View(StarWars)

# 1st column (lower case names)
StarWars[[1]] = tolower(StarWars$Name)
View(StarWars)

# column Born (removing BBY)
StarWars[["Born"]] = gsub('BBY', '', StarWars$Born)
View(StarWars)

# changing male names
StarWars[StarWars$Gender == 'male', 'Name'] <- c('Anakin', 'Luke')
View(StarWars)

# multiple conditions
cond <- (StarWars$Gender == 'female' & StarWars$Homeland != 'Alderaan')
StarWars[cond, 'Name'] <- 'PADME'
View(StarWars)

## BINDING COLUMNS AND ROWS
# Adding new column with cbind()
#number of rows
num_obs = nrow(StarWars)

# add random column
StarWars = cbind(StarWars, x = runif(num_obs))
View(StarWars)

# Adding new row with rbind()
# adding records for Obi-Wan






