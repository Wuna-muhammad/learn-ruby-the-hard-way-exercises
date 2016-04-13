#coding -*- utf-8 -*-

# Exercise No. 35 from Learn Ruby The Hard Way.
# Done by Bernard Pietraga.

def gold_room
  puts "This room is full of gold. How much"

  print "> "
  choice = $stdin.gets.chomp


  # Fixed.
  if choice =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastrd!")
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear decided to move away form door."
      puts "You can now open door."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def frank_room
  puts "Here you see the great evil Frank."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    frank_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp
  choice =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/

  if choice == "left"
    bear_room
  elsif choice == "right"
    frank_room
  else
    dead("You stumble around the room util you starve.")
  end
end

start
