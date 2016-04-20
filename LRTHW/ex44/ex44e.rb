#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part e of exercise.
# Done by Bernard Pietraga.

# This is example of object composition use
# which is better then class inheritance.

class Other
  # defines override function.
  def override()
    puts "OTHER override()"
  end

  # defines a function implicit.
  def implicit ()
    puts "OTHER implicit()"
  end

  # Defines altered function.
  def altered()
    puts "OTHER altered()"
  end
end

# building Child class using composition.
class Child
  def initialize()
    # Creates new instance of Other.
    # Assigns @other instance variable to it.
    @other = Other.new()
  end

  def implicit()
    # Gets implictit from other function and calls it.
    @other.implicit()
  end

  # This function overrides the one in Other class.
  def override()
    puts "CHILD override()"
  end


  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    # Gets altered function from other and calls it.
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

# Creates son object.
son = Child.new()

# Calls implicit on son object.
son.implicit()
# Calls override on son object.
son.override()
# Calls altered on son object.
son.altered()
