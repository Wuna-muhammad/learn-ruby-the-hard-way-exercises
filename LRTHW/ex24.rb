#coding -*- utf-8 -*-

# Exercise No. 24 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t ta'

# the <<END is a "heredoc".
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires and explantaion
\n\t\twhere there is none.
END

# Prints a string.
puts "______________"
# Prints a variable poem with string inside.
puts poem
# Prints a string.
puts "______________"

# Maths.
five = 10 - 2 + 3 - 6
# Prints a string with varible five executed.
puts "This should be five: #{five}"

# Secret formula.
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

# Defines variable.
start_point = 10000
# Gets return values from formula.
# Runs secret_formula function with start_point value set for 10000.
beans, jars, crates = secret_formula(start_point)

# Prints a string with start_point variable value.
puts "With a starting point of: #{start_point}"
# Prints a string with return values of called secret_formula.
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} cartes."
# Divides start_point variable by 10.
start_point /= 10
