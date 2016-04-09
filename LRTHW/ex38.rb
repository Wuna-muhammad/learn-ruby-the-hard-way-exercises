#coding -*- utf-8 -*-

# Exercise No. 38 from Learn Ruby The Hard Way.
# Done by Bernard Pietraga.

# Variable with string
ten_things = "Apples Oranges Crows Telephone Light Sugar"

# Prints a string.
puts "Wait there are not 10 things in that list. Let's fix that."

# stuff = split(ten_things, ' ')
# Calls split method with ten_things as a argument.
stuff = ten_things.split(' ')
# Calls split on ten_things.
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# Using math to make sure there is 10 items.
# While loop to count 10.
while stuff.length != 10
  # pop(more_stuff)
  # Call pop with argument more_stuff
  next_one = more_stuff.pop
  # Call pop on more_stuff
  puts "Adding: #{next_one}"
  # Call push with argument more_stuff
  stuff.push(next_one)
  # Call push on stuff
  puts "There are #{stuff.length} items now."
end

# Prints a string.
puts "There we go: #{stuff}"
# Prints a string.
puts "Let's do some things with stuff."


puts stuff[1]
puts stuff[-1]

# pop(stuff)
# call pop with argument stuff.
puts stuff.pop
# Call pop on stuff

# join(stuff)
# Call join with argument stuff
puts stuff.join(' ')
# Call joinon stuff

# Call join with argument stuff [3..5] and "#"
puts stuff[3..5].join("#")
# Call join on stuff[3..5]
