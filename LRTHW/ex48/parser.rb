# ParserError obejct is a Exception. (inheritance)
class ParserError < Exception
end

# Declares Sentence class.
class Sentence

  def initialize(subject, verb, obj)
    # declares variables used in class.
    # Allows to pair the first word to second one into object.
    # subject variable
    @subject = subject[1]
    @verb = verb[1]
    @object = obj[1]
  end

  # Allows to share instance variables data and allows to read it.
  attr_reader :subject
  attr_reader :verb
  attr_reader :object
end

class Parser

  # peek function which returns information about word type.
  def self.peek(word_list)
    # if statement checks if the word_list argument has any data.
    if word_list
      word = word_list[0]
      return word[0]
    else
      return nil
    end
  end

  # match function makes check if the word is the right type.
  # Returns nil if there is NOT any data.
  def self.match(word_list, expecting)
    if word_list
      word = word_list.shift

      if word[0] == expecting
        return word
      else
        return nil
      end
    else
      return nil
    end
  end

  # skip function skips words of decided type in argument.
  # Uses match to check word type and skips "stop" words like "the","at", etc.
  def self.skip(word_list, word_type)
    while Parser.peek(word_list) == word_type
      Parser.match(word_list, word_type)
    end
  end

  # parse_verb function parsers tne words and
  # checks if the next word is 'verb'.
  def self.parse_verb(word_list)
    # Skips stop words.
    Parser.skip(word_list, 'stop')

    # Peeks for verbs.
    if Parser.peek(word_list) == 'verb'
      return Parser.match(word_list, 'verb')
    else
      # Error if the word is not verb.
      raise ParserError.new("Expected a verb next.")
    end
  end

  # Object parser.
  def self.parse_object(word_list)
    # Skips stop words.
    Parser.skip(word_list, 'stop')
    next_word = Parser.peek(word_list)

    # Checks if the next word is noun or direction,
    # if not prints an error.
    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'direction'
      return match(word_list, 'direction')
    else
      raise ParserError.new("Expected a noun or direction next.")
    end
  end

  # Function parses subject.
  def self.parse_subject(word_list)
    Parser.skip(word_list, 'stop')
    next_word = Parser.peek(word_list)

    # Checks if word is noun, if so than everything is ok.
    # If the next word is verb the function assumes
    # that the sentence is missing noun.
    if next_word == 'noun'
      return Parser.match(word_list, 'noun')
    elsif next_word == 'verb'
      # Adds player word if the subject is missing.
      return ['noun', 'player']
    else
      raise ParserError.new("Expected a verb next.")
    end
  end

  # Parses whole sentence, from subject through verb to object.
  # The structure of sentence is subject + verb + object.
  def self.parse_sentence(word_list)
    subj = Parser.parse_subject(word_list)
    verb = Parser.parse_verb(word_list)
    obj = Parser.parse_object(word_list)

    return Sentence.new(subj, verb, obj)
  end

end
