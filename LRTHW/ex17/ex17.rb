#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 17 from Learn Ruby The Hard Way

# Gets filenames of source and destination file from commandline arguments.
from_file, to_file = ARGV

# Prints a string.
puts = "Copying from #{from_file} to #{to_file}"

# Copies content form one file to another
in_file = open(from_file)
indata = in_file.read

# Prints a string with information about number of file bytes.
puts "The input of the file is #{indata.length} bytes long  "

# Check if file to which will new material be copied exist.
puts "Does the output file exist? #{File.exist?(to_file)}"
# Prints a string with information to run script.
puts "Ready, hit RETURN to continue, CTRL-C to abort."
# Gets input from user.
$stdin.gets

# Opens destination file in write mode.
out_file = open(to_file, 'w')
# Writes data do new file form indata variable.
out_file.write(indata)

# Prints a string.
puts "Allright, all done."

# Closes process on writed designation file.
out_file.close
# Closes process on read source file.
in_file.close
