# Hotel scene.
class Hotel
  def enter()
    puts "You see hotel boy in the entrance room."
    puts "Do you go to booking stand?"
    puts 'Type "stand"'

    # Gets user input.
    print "> "
    choice = $stdin.gets.chomp

    # If statment as a part of the game interaction.
    if choice.include?("stand")
      return 'booking_stand'
    # If the choice have typo or wrong answer.
    # Runs it one more time in new object.
    else
      puts "I didn't understood your command."
      return 'hotel'
    end
  end
end
