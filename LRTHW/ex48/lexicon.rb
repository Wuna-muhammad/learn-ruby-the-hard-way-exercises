class Lexicon
  # Class dictioniary.
  @@dict = {
    'direction'=> ['north', 'south', 'east', 'west', 'up', 'down'],
    'verb'=> ['go', 'kill', 'eat'],
    'stop'=> ['the', 'in', 'of'],
    'noun'=> ['bear', 'princess']
  }

  def self.scan(text)
    # Separates argument words on space character.
    text_words = text.split(' ')
    # Puts it into result array.
    result = []

    # Each loop classify all words to sorted array.
    text_words.each do |text_word|
      # Output to the sorted array.
      sorted = []

      # In the argument is integer.
      number = Lexicon.integer?(text_word)
      # If argument is integer the if statment is true.
      if (number)
        # Sorts numbers.
        sorted = ['number', number]
        # Pushes result.
        result.push(sorted)
        next
      end

      @@dict.each do |type, list|
        # Checks if the word fits, transfers argument to downcase.
        if list.include?(text_word.downcase)
          sorted = [type, text_word]
          result.push(sorted)
          break
        end
      end

      # Checks If the array is empty if empty is true creates error message.
      if (sorted.empty?)
        sorted = ['error', text_word]
        result.push(sorted)
      end
    end
    # Returns word.
    return result
  end

  # Transfers number to integer.
  def self.integer?(object)
    # Performs substitution and removes zero.
    object.sub!(/^0+/, "")

    begin
      # Returns integer object.
      return Integer(object)
    rescue
      # Returns false  if the argument is not integer.
      return false
    end
  end

end
