# First scene of the game.
class Ground
  # Enter function of class. Allows to call code inside it.
  def enter()
    puts "You wake up on Warsaw street laying on the concrete."
    puts "Cold from it runs to your back."
    puts "Trying to find in mind what had happend,"
    puts "you start to realise that you have blank memories."
    puts "You need to get up on feet."
    puts "Type \"get up\""

    # Gets user input.
    print "> "
    choice = $stdin.gets.chomp

    # If statment.
    if choice.include?("get up")
      return 'park'
      # If the choice have typo or wrong answer.
      # Runs it one more time in new object.    else
      puts "I didn't understood your command."
      return 'ground'
    end
  end
end
