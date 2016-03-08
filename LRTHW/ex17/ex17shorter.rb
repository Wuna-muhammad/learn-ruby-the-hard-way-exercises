#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 17 from Learn Ruby The Hard Way

# Gets filenames of source and destination file from commandline arguments.
from_file, to_file = ARGV

# Copies content form one file to another
in_file = open(from_file)
indata = in_file.read
out_file = open(to_file, 'w')
out_file.write(indata)

puts "Copied content form #{from_file} to #{to_file}"

out_file.close
in_file.close
