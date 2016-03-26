#coding -*- utf-8 -*-

# Excercise No. 32 from Learn Ruby The Hard Way
# Bernard Pietraga

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# This first kind of for-loop goes through a list.
# In a more traditional style found in other launguages.
the_count.each do |number|
  puts "This is count #{number}"
end

# Same as above, but in a more Ruby style.
# This and the next one are the preferred.
# Way Ruby for-loops are written.
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# Also we can go through mixed lists too.
# Different syntax (way to write it).
change.each {|i| puts "I got #{i}" }

# We can also build lists, first start with an empty one.
elements = []

# Then use the range operator to do 0 to 5 counts.
(0..5).each do |i|
  puts "adding #{i} to the list"
  # Pushes the i variable on the *end* of the lists
  elements.push(i)
end

# Now we can print them out too.
elements.each {|i| puts "Element was #{i}"}

# Just the same as elements loop but with << opossed to push.
puts
puts "Second part of exercise."

more_elements = []
(0...11).each do |z|
  puts "Adding #{z} to the list."
  more_elements << z
end

more_elements.each {|z| puts "More element number: #{z}" }
