def add(a, b)
  puts "Adding #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"
puts # Blank line.
puts "This is not my data. ;)"
age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

puts
# Time for second formula
puts "Time for new formula."
say_what = multiply(iq, subtract(height, age))
puts "New useless math formula equasion outcome: #{say_what}"
puts # Blank line

puts "Last math formula."
# Another math formula
# (((age * iq) + 1) * 3) / 3
recreate = divide(multiply((add((multiply(age, iq)), 1)), 3), 3)
puts "We get #{recreate} from formula."
puts "That's good."
