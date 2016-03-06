#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 15 from Learn Ruby The Hard Way

# Takes command line argument.
puts "Type filename to open"
filename = gets.chomp

# Opens declared file file.
txt = open(filename)

# Reads and prints all information (with no additional arguments).
puts "Here is your file #{filename}:"
print txt.read

# Close read file.
txt.close