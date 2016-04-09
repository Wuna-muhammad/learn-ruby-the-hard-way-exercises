#coding -*- utf-8 -*-

# Exercise No. 37 from Learn Ruby The Hard Way.
# Done by Bernard Pietraga.

# This is study drill to check ruby stuff.
# More-less like playground. :)

puts "This is not a first string."

# Runs code block at the beggining of the script.
BEGIN { puts "This is first string." }

# Test function.
def test_function
  # Prints a string.
puts "Function test print a string."
# Ends a function.
end

# Runs code block at the end of the script.
END { puts "This is last string." }

# Adds new name for the function.
alias :new_test_function_name :test_function
# Prints a string.
puts "Below test_function called."
# Calls a test function.
test_function
# Prints a string.
puts "Try alias function name change and call test_function."
# Calls anoter name for test function.
new_test_function_name

# Lower priority && in a puts.
puts "Test " and "test."

begin
ensure
  test_function != nil
end

puts
puts "Defined test."
defined? Function == test_function

def yield_test
  puts "Upper string."
  yield
  puts "Lower string."
end



yield_test { puts "Yield test string." }


# Each loop with counting from 0 to 5.
elements = []
(0..5).each do |i|
  if i < 2 then
    next
  end
  elements.push(i)
end

elements.each {|i| puts "Elements was : #{i}" }

puts "For loop."
other_numbers = []
for x in 0..10
  if x < 5 then
    next
  end
  puts "Next iteration. #{x}"
  other_numbers.push
end
