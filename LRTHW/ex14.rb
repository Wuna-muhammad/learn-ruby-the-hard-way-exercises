#coding -*- utf-8 -*-

# Exercise No. 14 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

user_name = ARGV.first # Gets the first argument
prompt = "Type below."

puts "Hi #{user_name}."
puts "I would like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Allright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
