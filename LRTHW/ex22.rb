#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 22 from Learn Ruby The Hard Way
# Do not run this file. It is just for syntax learning purposes.

# characters.
# Pound character - turns on comment. Disables code after it.

# Math symbols.
# + (plus) addiction.
# - (minus) subtraction.
# / (slash) division.
# * (asterisk) multiplication.
# % (percent) modulo.
# < (less-than).
# > (greater-then).
# <= (less-than-equal).
# >= (greater-then-equal)
# = (equal) set vaule for variable.

# Symbols.
# == check if things have the same value. Returs true or false.
# () parentheses are useful for setting arguments.
# "" or '' qutoation marks starts and end string.
# '' ignore any variable inside string.
# """ or ''' allows write string with unlimited new lines inside.
# #{} for string interpolation, puts variable code inside a string and evaluate it.
# %{} ahonther way to apply same format to a string.

# Escape sentences.
# \\ prints a backslash.
# \' prints a single-quaote in a string.
# \" prints a double-quote symbol.
# \a prints ASCII bell.
# \b puts ASCII backspace.
# \f prints ASCII formfeed.
# \n puts \n newline.
# \r puts return.
# \t inserts tabform style to line.
# \uxxxx prints character with 16 bit hex vaule xxxx. Unicode.
# \v puts vertical tab.
# \ooo character with octal value ooo.
# \xhh character with hex value hh.

puts # Creates new line and prints a string.

print # Prints a string on the same line.

def method_name() # Creates function
# Something inside function.
end

variable = "" #  Creates variable

gets # Gets input from user.

chomp #  This method removes record sepearator, return characters (for example newline).

.to_i # This method changes string to integer number.
.to_f # This method chnages input to floating point number.

ARGV # Argument variable, takes arguments from typed in shell.
$stdin # Standarised user input from console, file, or another program.
open(file) # Opens selected file.
.read # Assigns and store file content.
.truncate # File object method, shortens a string. If (0) than clears the file.
.write(name, string, [offset], open_args) # Object method, writes to file.
.close # File object method, closes file, saving all pending changes.
.length # String method, shows sting, argument, other symbols number.
ARGF # Stream to process files given from commandline or STDIN.
.seek # Seeks and moves to position given by integer.
.exist? # Method checks if file exist, returns true or false.

something.seek(-11, IO:SEEK_CUR) # Seek from current loctation.
IO:SEEK_END # Seek from the end of the file.
IO:SEEK_SET # Seek from absolute loctation.

# Ruby shorthand notation.
# += Adds to existing value, string.
# -= Subtract from existing value.
# *= Multiplicate existing value by given argument.
# /= Divides existing value by given argument.
