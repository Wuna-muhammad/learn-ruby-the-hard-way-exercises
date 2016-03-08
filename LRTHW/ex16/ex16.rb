#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 16 from Learn Ruby The Hard Way

# Opens declared file in shell.
# Prints warning message,
filename = ARGV.first
puts "We're going to earse #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "I you don't want that press RETURN."

# Gets standarised input.
$stdin.gets

# Prints string message.
puts "Opening the file..."
# Variable target opens declared file with write parameter.
target = open(filename, 'w')

# Prints a string. 
puts "Now I'm going to ask you for three lines."

# Prints a string.
print "line 1: "
# Gets standarised input from user and assigns it to variable line1.
line1 = $stdin.gets.chomp
# Prints a string.
print "line 2: "
# Gets standarised input from user and assigns it to variable line2.
line2 = $stdin.gets.chomp
# Prints a string.
print "line 3: "
# Gets standarised input form user and assigns it to variable line3.
line3 = $stdin.gets.chomp

# Prints a line.
puts "I'm going to write these to the file."

# Writes variables line1, line 2, line3 and "new lines" in between the varibles to file.
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# Prints a string.
puts "And finally, we close it."
# Closes a file. 
target.close

# Prints string.
puts "Now lets read the file to which we writed to."
# Prints string with variable filename (points to file).
puts "Content of #{filename} below:\n"
# Opens file in read-only mode.
target = open(filename)
# Prints content of opened file.
print target.read