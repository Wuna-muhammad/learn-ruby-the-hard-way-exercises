#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part b of exercise.
# Done by Bernard Pietraga.

# This is example of class inheritance use
# which is worse then object composition.

class Parent

  # defines override function.
  def override()
    puts "PARENT override()"
  end
end

# Child class is-a Parent.
class Child < Parent

  # defines override function.
  # this function overrides the function in class Parent.
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

puts "Override."
# Calls override method from dad object.
dad.override()
# Gets override function from son and then calls it.
son.override()
