# Taxi scene.
class Taxi
  def enter()
    puts "You enter the taxi."
    puts "The cab driver asks you for the destination."

    # Gets user input.
    puts 'Type "I forgot the destination"'
    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("I forgot the destination")
      puts "Cab driver speaks: \"I don't know this place.\""
      puts "Cab driver speaks: \"But i can take you to hotel.\""
      puts "You agree and he drives you to hotel."
      puts "You enter to the hotel."
      return 'hotel'
    # If the choice have typo or wrong answer.
    # Runs it one more time in new object.
    else
      puts "I didn't understood your command."
      return 'taxi'
    end
  end
end
