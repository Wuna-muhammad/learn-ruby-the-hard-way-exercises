#coding -*- utf-8 -*-

# Exercise No. 11 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weight? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

puts "Lets begin with another form to fill."

print "What is your hobby? "
hobby = gets.chomp
puts "Your hobby is #{hobby.downcase}. "
puts "How much hours per day do you spend for hobby activities? "
hobby_time = gets.chomp
puts "You spend #{hobby_time} hours per day for hobby activities. "

print 'Do you like your hobby? Answer "true" or "false".'
hobby_like = gets.chomp
if hobby_like == "true"
puts "You like your hobby. That's good."
elsif hobby_like == "false"
puts "You don't like your hobby. That's sad."
else
puts "Type proper answear."
end
