#coding -*- utf-8 -*-

# Game form excercise No. 31 from Learn Ruby The Hard Way
# Little bit funny.
# Bernard Pietraga

# Prints a string.
  puts "You enter a dark room with two doors.  Do you go through door #1 or door #2?"

# Prints a string.
print "> "
# Variable gets standarised input from keyboard and chomps new line.
door = $stdin.gets.chomp

# If statement which detect user input and gives game possible options.
# First bootlean condition checks if number 1 is typed.
# If "door" variable equals "1".
if door == "1"
  # If true prints a strings.
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take a cake."
  puts "2. Scream at the bear."

  # Prints a string on one line.
  print "> "
  # Gets input form user.
  bear = $stdin.gets.chomp

  # If statement inside door no. 1 if statement.
  # Bootlean condition checks if 1 had been typed.
  if bear == "1"
    # If true prints a string.
    puts "The bear eats your face off. Good job!"
  # Another bootlean condition.
  elsif bear == "2"
    # If true prints a string.
    puts "The bear eats your legs off. Good job!"
  # Else if 1 or 2 haven't been typed.
  else
    # Prints a string.
    puts "Well, doing #{bear} is probably better. Bear runs away."
  # End of if statement inside door 1 game option.
  end

# Another bootlean condition.
elsif door == "2"
  # Prints a strings.
  puts "You stare into the endless abyss at Lord Vader's retina."
  puts "What do you do?"
  # Prints strings with suggestions for input.
  puts "1. Mayonnaise."
  puts "2. Yellow jacket clothespins"
  puts "3. Use lightsaber."

  print "> "
  # Variable gets input from user.
  insanity = $stdin.gets.chomp

  # Bootlean condition if 1 or 2 is typed to input condition is true.
  if insanity == "1" || insanity == "2"
    # Prints a string.
    puts "Your body survives powered by power of jelly."
  # Else if variable insanity have other data than 1 or 2.
  else
    # Prints a few strings.
    puts "After the fight Vader is sad and drinks tea with you."
    puts "He crys when he speaks about Luke memories. "
    puts "He looks very sad. What do you do?"
    # Prints a strings with sugesstions for user input.
    puts "1. Hug him."
    puts "2. Run away."
    puts "3. Make more tea."
    puts "4. Tell him to be a man."

    # Prints a string.
    print "> "
    # Vader variable stores input from user.
    # Input data is about which action user does to Lord Vader.
    vader = $stdin.gets.chomp

    # Bootlean condition tied to vader variable.
    # If data stored in vader variable is "1" than prints a string.
    if vader == "1"
      # Prints a string.
      puts "He smiles and says: \"Welcome in dark side.\" Game Over!"
    # If vader variable data equals "2" prints a string.
    elsif vader == "2"
      puts "You start to run away. +10 to agility. But Vader grabs you. Game Over!"
    # If vader variable data equals "3" prints a string.
    elsif vader == "3"
      puts "Vader starts talking about problems with family."
    # If vader variable data equals "4" prints string.
    elsif vader == "4"
      puts "He gets angry and dies from asthma attack. You win!"
      puts "He should have seen doctor. Poor Vader."
    # If vader varaible stores another data.
    else
      puts "Doing #{vader} wasn't effective. Game Over!"
    # End of if statement.
    end

  # And of second if statement tied to door 2 game option.
  end

# Else if "1" or "2" is not typed and user input is other.
else
  # Prints a string.
  puts "You fall into the cellar and break your pelvis. Game Over!"
# End of if statent tied to game door option.
end
