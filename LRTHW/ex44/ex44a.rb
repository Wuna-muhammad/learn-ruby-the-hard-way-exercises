#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part a of exercise.
# Done by Bernard Pietraga.

# This is example of class inheritance use
# which is worse then object composition.

class Parent

  # defines a function implicit.
  def implicit ()
    puts "PARENT implicit()"
  end

end

# Child class is-a Parent.
class Child < Parent
end

dad = Parent.new()
son = Child.new()

puts "Implicit inheritance."

# Calls implicit method from dad object.
dad.implicit()
# Gets the method from dad. Calls implicit on son object.
son.implicit()
