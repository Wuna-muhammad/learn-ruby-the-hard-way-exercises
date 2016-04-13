#coding -*- utf-8 -*-

# Exercise No. 34 from Learn Ruby The Hard Way.
# Done by Bernard Pietraga.

# Animals array.
animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

# Prints a string.
puts "Content of animals array:"
# Acessing animals useing cardinal numbers.
# The bear is at 0 and is the first animal in array.
puts animals[0]
# Ruby is 2nd animal in array and is at 1.
puts animals[1]
# Peakock is 3rd animal and is at 2.
puts animals[2]
# Kangaroo is at 3 and is 4th animal.
puts animals[3]
# Whale is 5th and is at 4.
puts animals[4]
# Platypus is at 5 and is 6th animal.
puts animals[5]

# More complex way useing function with cardinal number argument.
def car_types(ordinal)
  # Array with car types.
  cars = ['sedan', 'kombi', 'SUV', 'hatchback', 'sports car', 'convertible', 'microcar']
  # If statement checks if typed number is in Array argument range.
  if ordinal >= 1 && ordinal <= cars.length
    # If true prints a string.
    puts "The car type is %s and is at #{ordinal - 1 }." % cars[ordinal - 1]
  else
    # If false prints this string.
    puts "You typed incorrect number."
  end
end

# Prints a string.
puts "Type car number."
# Prints a string.
print "> "
# Prompts and gets user input and converts input to integrer number.
car = $stdin.gets.chomp.to_i
# Prints a executed function call code.
puts "#{car_types(car)}"
