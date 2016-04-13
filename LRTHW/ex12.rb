#coding -*- utf-8 -*-

# Exercise No. 12 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# Script for giving back 10% of putted dolars.
print "Give me a number of dollars: "
dollars = gets.chomp.to_f
your_dollars_divided = dollars / 10
puts "Your number of dollars is now #{your_dollars_divided} $."
