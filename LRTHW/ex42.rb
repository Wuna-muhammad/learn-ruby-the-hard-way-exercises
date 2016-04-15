#coding -*- utf-8 -*-

# Exercise No. 42 from Learn Ruby The Hard Way
# Done by Bernard Pietraga

## Animal is-a object look at the extra credit.
class Animal

  def animal?()
    true
  end

  def make_sound(sound=nil)
    puts "#{sound} #{sound}"
  end

  attr_reader :name
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    # Dog has-a function initialize which takes name parameter.
    @name = name
  end

  def make_sound()
    super("hau")
  end
end

# Cat is-a Animal object.
class Cat < Animal
  def initialize(name)
    @name = name
  end

  def make_sound()
    super("meow")
  end
end

## Person is-a object.
class Person
  def initialize(name)
    ## Person has-a function initialize which take name argument.
    @name = name

    ## Person has-a pet of some kind
    @pet = nil

    ## Person has-a list of clothes.
    @clothes = []
  end

  attr_accessor :pet, :clothes

  def about()
    puts "The person name: #{@name}."

    puts "The person's list of clothes:"
    @clothes.each { |clothing| puts clothing}
    puts "Is a part of #{@name} clothing."

    puts "#{@name} has a animal pet #{@pet.name}." unless @pet.nil?
  end
end


## Employee is-a Person.
class Employee < Person

  def initialize(name, salary)
    ## Employee is-a chlid from Parent
    ## Current object is Employee
    ## initilize takes name and salary arguments.
    ## Initialze function is taken from Person class.

    super(name)
    ## Person has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a dog
rover = Dog.new("Rover")

## Klops is-a Cat
klops = Cat.new("Klops")

## Mary is-a Person
mary = Person.new("Mary")

## Mary has a pet klops
mary.pet = klops

# mary has clothing on her.
mary.clothes = ['jeans', 'jacket', 't-shirt']

## About mary.
mary.about()

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet rover
frank.pet = rover


## flipper is-a Fish
flipper = Fish.new()

## mayo is-a Salmon
mayo = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

# Pets make sound.
puts "Pets make sound."
rover.make_sound()
klops.make_sound()

## mary has-a pet klops
