#coding -*- utf-8 -*-

# Exercise No. 19 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

# Defines function called cheese_and_crackers.
# Function have 2 variables which accept arguments.
# Variables are called cheese_count and boxes_of_crackers.
# Variables take numbers from arguments, math, other variables.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
# Prints string with value of cheese_count variable.
  puts "You have #{cheese_count} cheeses!"
# Prints string with value of boxes_of_crackers variable.
  puts "You have #{boxes_of_crackers} boxes of crackers!"
# Prints string.
  puts "Man that's enough for a party!"
# Prints string with newline.
  puts "Get a blanket.\n"
# Ends function.
end

# Prints string.
puts "We can just give the function numbers directly:"
# Declares arguments for cheese_and_crackers function and calls function.
cheese_and_crackers(20, 30)

# Prints string.
puts "OR, we can just use variables from our script:"
# Declares amount_of_cheese variable and gives it value of number 10.
amount_of_cheese = 10
# Declares amount_of_crakers variable and gives it value of number 50.
amount_of_crackers = 50

# Calls function cheese_and_crackers.
# Passes variables amount_of_cheese and amount_of_crackers as arguments to function.
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# Prints a string.
puts "We can even do math inside too:"
# Calls function cheese_and_crackers and as arguments uses math addition.
cheese_and_crackers(10 + 20, 5 + 6)

# Prints string.
puts "And we combine the two, variables and math:"
# Calls function and passes argumets from addition of variable and numbers.
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

# New function begins here.
puts "Now lets begin with new function."

puts "It is pizza time."

def pizza_dough(flour, water, salt, yeast)
  puts "Lets make pizza dough."
  puts "You have #{flour} grams of flour."
  puts "You have #{water} milliliters of water."
  puts "You have #{salt} grams of salt."
  puts "You have #{yeast} grams of yeast."
end

puts "\n"
puts "1st way of running pizza function."
pizza_dough(1000, 200, 10, 15)

puts "\n"
puts "2nd way of running function."
pizza_dough(50 * 40, 1000 / 2, (15 % 10) * 4, 15 + 10)

puts "\n"
puts "3rd way of running (useing, calling)"
# Variables are declared upfront.
flour = 350
water = 100
salt = 10
yeast = 5

pizza_dough(flour, water, salt, yeast)

puts "\n"
puts "4th way of running function."
pizza_dough(flour * 3, water * 2, salt * 8, yeast * 100)
puts "Whoa thats wrong."

puts "\n"
puts "5th way of running funtion."
puts "How much flour do you have?"
flour = gets.chomp.to_i
puts "How much water do you have?"
water = gets.chomp.to_i
puts "How much salt do you have?"
salt = gets.chomp.to_i
puts "How much yeast do you have?"
yeast = gets.chomp.to_i
pizza_dough(flour, water, salt, yeast)

puts "\n"
puts "6th way of running function."
pizza_dough(flour - water, water + yeast, salt - yeast, yeast + yeast)

puts "\n"
puts "7th way of running funtion."
pizza_dough((flour % water) * 50, (water / yeast) * 20, (salt ** yeast), salt)

puts "\n"
puts "8th way of running function."
puts "Type 4 random numbers."
pizza_dough(gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i)

puts "\n"
puts "9th way of running function."
pizza_dough(10 ** 3, 20 ** 2, 3 ** 5, 8 ** 2)

puts "\n"
puts "10th way of running function."
pizza_dough("Pizza".length * 5, "Cool".length * 2, "Tasty".length * 3, "Mhm".length * 4)

puts "\n"
puts "Cool"
