#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 15 from Learn Ruby The Hard Way

# Takes filename from command line argument and assigns it to variable.
filename = ARGV.first

# Opens declared filename from string assigned to txt variable.
txt = open(filename)

# Reads and prints all information (with no additional arguments).
puts "Here is your file #{filename}:"
print txt.read

# Close read file.
txt.close