#coding -*- utf-8 -*-

# Exercise No. 44 from Learn Ruby The Hard Way
# Part e of exercise.
# Done by Bernard Pietraga.

# This is example of using mixins.

module Other
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

# building Child class.
class Child
  # Includes module Other in Child class.
  # Child class now can acess Other module methods.
  include Other

    # This function overrides the one in Other module.
  def override()
    puts "CHILD override()"
  end

  # Defines altered function.
  # altered function overrides the one in Other module.
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    # Gets altered function from Other and calls it.
    Other.altered()
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
