#coding -*- utf-8 -*-

types_of_people = 10
x = "There are #{types_of_people} types of people" # Variable with delared string linking to variable delaring types of people.
binary = "binary" # Variable with declared string of text the exactly the same as variable name.
do_not = "don't" # Variable with declared string of text the same as variable name.
y = "Those who know #{binary} and those who #{do_not}." # Variable 

puts x
puts y

puts "I said #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}."

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e