# Booking stand scene from game.
class BookingStand
  # Enter function of class. Allows to call code inside it.
  def enter()
    # Prints a string.
    puts "You see hotel boy in the entrance room."
    puts "You want to ask hotel boy what your story."
    puts 'He asks you : "Who you are? In one word."'

    # Gets user input.
    print "> "
    # Gets standarised input from user.
    choice = $stdin.gets.chomp

    # If statment.
    if choice.include?("human")
      puts "He answers that you are true."
      puts "But this is it."
      puts "He say that he sees you for the first time."
      return 'finish'
      # If the choice have typo or wrong answer.
      # Runs it one more time in new object.
    else
      puts "Look for other answer."
      return 'booking_stand'
    end
  end
end
