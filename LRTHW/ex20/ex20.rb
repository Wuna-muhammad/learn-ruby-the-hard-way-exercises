#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 20 from Learn Ruby The Hard Way

# Variable gets fileame from commandline argument.
input_file = ARGV.first

# Function prints from every argument passed to it.
def print_all(f)
  puts f.read()
end

# Function returns to beginning of file.
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

# Function prints a line number and then content of file line.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"  # Prints line_count variable and than gets line content from read function.
end

# Variable opens input file and stores data.
current_file = open(input_file)

# Prints a string.
puts "First let's print thw whole file:\n"

# Prints whole opened (current) file. 
print_all(current_file)

# Prints a string.
puts "Now lets rewind, kind of like tape."
puts # Prints new blank line.

# Rewinds file to beginning.
rewind(current_file)

# Prints a string.
puts "Let's print three lines:"

# Sets variable current_line to 1.
current_line = 1
# Prints 1 line from opened file.
print_a_line(current_line, current_file)

# Adds 1 to current_line value giving number 2. 
current_line = current_line += 1
# Prints line from current number (2) and current opened file.
print_a_line(current_line, current_file)

# Sets number 3 as value for variable.
current_line = current_line += 1
# Prints line number 3 form file form current file. 
print_a_line(current_line, current_file)
