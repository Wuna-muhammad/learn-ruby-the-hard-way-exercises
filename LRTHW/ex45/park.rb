# Park scene.
class Park
  def enter()
    puts "Standing on the feet you understand that you lost memories in"
    puts "park, and you don't know anything."
    puts "You start to look around."
    puts "You see taxi cab and hotel nearby."
    puts 'Do you go to "hotel" or "taxi"?'

    # Gets user input.
    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("taxi")
      return 'taxi'
    elsif choice.include?("hotel")
      return 'hotel'
    else
      puts "I didn't understood your command.".upcase
      return 'park'
    end
  end
end
