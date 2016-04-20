#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part c of exercise.
# Done by Bernard Pietraga.

# This is example of class inheritance use
# which is worse then object composition.

class Parent

  # Defines altered function.
  def altered()
    puts "PARENT altered()"
  end
end

# Child class is-a Parent.
class Child < Parent

  # Defines altered function.
  # altered function overrides the one in Parent class.
  # It alters the code.
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    # Super method takes code from Parent class.
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

puts "altered."
# Gets altered method from dad and calls it.
dad.altered()
# Gets altered method from son and calls it.
son.altered()
