#coding -*- utf-8 -*-

# Excercise No. 30 from Learn Ruby The Hard Way
# Bernard Pietraga

# Declares people variable.
people = 30
# Declares cars variable.
cars = 40
# Declares trucks variable.
trucks = 15

# First if statement.
# Bootlean condition checks if there are more cars than people.
if cars > people
  # If true. Prints a string.
  puts "We should take the cars."
# Second bootlean condition checks if there are less cars than people.
elsif cars < people
  # If true. Prints a string.
  puts "We should not takt the cars."
# The else statment if requrements to pass 2 bootlean contition weren't met.
else
  # Prints a string.
  puts "We can't decide."
# End of if statement.
end

# Second if statement.
# First bootlean condition checks if there are more trucks than cars.
if trucks > cars
  # Prints a string.
  puts "That's too many many trucks."
# Second bootlean condition checks if there are less truck than cars.
elsif trucks < cars
  # If true. Prints a string.
  puts "Maybe we could take the trucks."
# Else statement works if first 2 conditons are false.
else
  # Prints a string.
  puts "We still can't decide."
# End of if statement.
end

# Third if statement.
# Bootlean conditon checks if there are more people than trucks.
if people > trucks
  # If true. Prints a string.
  puts "Alright, let's just take the trucks."
# If false. Else statment works.
else
  # Prints a string.
  puts "Fine, let's stay home then."
# End of if statement.
end
