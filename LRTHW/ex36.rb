#coding -*- utf-8 -*-

# Exercise No. 36 from Learn Ruby The Hard Way.
# Done by Bernard Pietraga.

# The game is about one day fictional metro hero.

def game
  # Here is printed a lot of strongs.
  puts "You enter the metro."
  puts "Like all other days of your working life you travel to corporation."
  puts "Sudennly you hear shots and shout \"On the ground now!\"."
  puts "5 meters away from you is man with potato bomb sticked to his jacket."
  puts "You think: \"I'm screwed!\""
  puts "_______________________"
  puts "You have backpack on your knees."
  puts "You can open it."
  puts "type: \"backpack\""
  puts "_______________________"
  puts "You have two hands."
  puts "You can attack man."
  puts "type: \"attack\""
  puts "_______________________"
  puts "You have time in this whole mess."
  puts "You can wait and look around."
  puts "type: \"wait\""
  puts "_______________________"

  # Prints a string on one line.
  print "> "
  # Gets standarised keyboard input from user.
  choice = $stdin.gets.chomp
  # Varibles passed through =~ operator to match characters in input.
  choice =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/

  # If statement routes game paths based on input words.
  if choice.include? "backpack"
    # Calls backpack_trail function.
    backpack_trail
  elsif choice.include? "attack"
    # Calls attack_no_knife function.
    attack_bare_hands
  elsif choice.include? "wait"
    # Prints a string.
    puts "You see man trying to detonte potato."
    puts "You hear another shots, he shoot to police."
    # Calls wait function.
    wait
  else

    # Prints a string with upcase characters.
    puts "Type one of 3 options.".upcase
    # Calls game function and returns to beginning.
    game
  end
end

# backpack_trail function opens backpack game path.
def backpack_trail
  # Prints a few strings.
  puts "You look up to your backpack."
  puts "You see mobile phone and knife."
  puts "Do you use \"knife\" or \"mobile\"?"

  # Prints string on one line.
  print "> "
  # Gets user input.
  decide = $stdin.gets.chomp
  # Match strings to fit characters..
  decide =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/

  # If statement.
  # If input is knife then routes to attack_kinfe game path.
  if decide.include? "knife"
    puts "You have knife in hand you need to act quickly."
    puts "Man looks at you and you know in won't be easy."
    attack_knife
  # If input is mobile the routes to die game path.
  elsif decide.include? "mobile"
    die("You where calling police when the man decided to explode.")
  # If inputs is not knife or mobile then runs function again with message.
  else
    # Prints a string with message with upcase letters.
    puts "Write proper input.".upcase
    backpack_trail
  end
end

# Attack knife game path.
def attack_knife
  puts "You get up and quicky grab the man."
  puts "Maybe it wasn't do good idea."
  puts "You attack man and block him."
  puts "You saved whole train and made potato chips."
  puts "You win."
  # Ends game and exits.
  exit(0)
end

# Function with game path with no knife
def attack_bare_hands
  # Prints a string.
  puts "You jump on man."
  # Prints a string.
  puts "He takes knife"
  # Die funciton call, with string message.
  die("He uses knife and stabbs you.")
end

# Function wait, 3rd game path.
def wait
  # Prints a string.
  puts "You started waiting and is wasn't good."
  # Call die function, with a string message.
  die("Man decided to detonate.")
end

# Die funtion. ends game.
def die(why)
  puts why, "Game Over"
  # Closes ruby script and exits to shell.
  exit(0)
end

# Runs whole game.
game
