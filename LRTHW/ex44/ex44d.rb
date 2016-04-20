#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part d of exercise.
# Done by Bernard Pietraga.

# This is example of class inheritance use
# which is worse then object composition.

class Parent
  # defines override function.
  def override()
    puts "PARENT override()"
  end

  # defines a function implicit.
  def implicit ()
    puts "PARENT implicit()"
  end

  # Defines altered function.
  def altered()
    puts "PARENT altered()"
  end
end

# Child class is-a Parent.
class Child < Parent
  # defines override function.
  # this function overrides the function in class Parent.
  def override()
    puts "CHILD override()"
  end

  # Defines altered function.
  # altered function overrides the one in Parent class.
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    # Super method takes code from Parent class and calls it.
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

puts "Implicit."
# Calls implicit method from dad object.
dad.implicit()
# Gets the implicit method from dad. Calls implicit on son object.
son.implicit()

puts "\n"
puts "Override."
# Calls override method from dad object.
dad.override()
# Gets override function from son and then calls it.
son.override()

puts "\n"
puts "altered."
# Gets altered method from dad and calls it.
dad.altered()
# Gets altered method from son and calls it.
son.altered()
