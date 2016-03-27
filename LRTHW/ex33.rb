#coding -*- utf-8 -*-

# Excercise No. 33 from Learn Ruby The Hard Way
# Done by Bernard Pietraga.

# Function with while loop.
# Increment argument variable defines value by which will be 0 incremented by loop.
# Number argument variable defines integrer number
# before which counting will stop.
def count_loop(increment, number)
  i = 0
  numbers = []
  while i < number
    puts "At the top i is #{i}"
    numbers.push(i)

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  puts "The numbers: "
  numbers.each {|num| puts num}
end

# Function call with incerement set to 2 and number set to 8.
count_loop(2, 8)

puts
puts "Another function with range operator inside."
def range_operator_loop (limit_number)
  numbers = []
  for number in (0...limit_number)
    puts "The number is: #{number}"
    numbers.push(number)
  end

  puts "The numbers list: "

  for number in numbers
    puts number
  end
end

range_operator_loop(20)
