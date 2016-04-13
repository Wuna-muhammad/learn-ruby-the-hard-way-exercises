#coding -*- utf-8 -*-

# Exercise No. 5 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

my_name = 'Bernard Pietraga'
my_age = 21 # Not even a lie.
my_height = 72 # inches
my_weight = 170 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Lets talk about #{my_name}."
puts "He's #{my_height} inches tall."
puts "He's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes} eyes and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."


#test
puts
puts ".downcase test"
puts "test He's got #{my_eyes.downcase} eyes and #{my_hair.downcase} hair." # test .downcase variable inside string
puts "test His teeth are usually #{my_teeth.downcase} depending on the coffee." # test .downcase variable inside string
