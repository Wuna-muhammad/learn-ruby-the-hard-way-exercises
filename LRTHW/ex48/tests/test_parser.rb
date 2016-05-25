require "./parser.rb"
require "test/unit"

# Test for the Parser object.
class TestParser < Test::Unit::TestCase

  def test_peek()
    result = Parser.peek([['stop', 'at'],
                          ['noun', 'bear'],
                          ['verb', 'pizza']])
    assert_equal("stop", result)
    assert_equal(nil, Parser.peek(nil))
  end

  def test_match()
    assert_equal(['noun', 'bear'], Parser.match([['noun', 'bear'],
                                                ['verb', 'fight'],
                                                ['noun', 'walk']],
                                                'noun'))
    assert_equal(nil, Parser.match(nil, 'noun'))
    assert_equal(nil, Parser.match([['noun', 'bear'],
                                    ['verb', 'fight']],
                                    'verb'))
  end

  def test_skip_function()
    assert_equal(nil, Parser.skip([['stop', 'at'],
                                  ['noun', 'bear']],
                                  'stop'))
    assert_equal(nil, Parser.skip([['stop', 'on'],
                                  ['stop', 'the'],
                                  ['stop', 'at'],
                                  ['noun', 'pizza']],
                                  'noun'))
  end

  def test_parse_verb()
    result = Parser.parse_verb([['stop', 'at'],
                                ['stop', 'the'],
                                ['stop', 'on'],
                                ['stop', ' '],
                                ['verb', 'dance']])

    assert_equal(['verb', 'dance'], result)


    assert_raise ParserError do
      Parser.parse_verb([['stop', 'at'],
                        ['stop', 'the'],
                        ['noun', 'bear']])
    end
  end

  def test_parse_object()
    assert_equal(['noun', 'princess'], Parser.parse_object([['stop', 'at'],
                                                            ['stop', 'the'],
                                                            ['noun', 'princess']]))
    assert_equal(['direction', 'west'], Parser.parse_object([['stop', 'at'],
                                                            ['stop', 'the'],
                                                            ['direction', 'west']]))

    assert_raise ParserError do
      Parser.parse_object([['stop', 'at'],
                          ['stop', 'the'],
                          ['verb', 'walk']])
    end

  end

  def test_parse_subject()
    assert_equal(['noun', 'princess'], Parser.parse_subject([['stop', 'at'],
                                                            ['stop', 'the'],
                                                            ['noun', 'princess']]))
    assert_equal(['noun', 'player'], Parser.parse_subject([['verb', 'walk'],
                                                          ['stop', 'the'],
                                                          ['noun', 'bear']]))

    assert_raise ParserError do
      Parser.parse_subject([['stop', 'on'],
                            ['stop', 'at'],
                            ['direction','up'],
                            ['direction', 'down']])
    end
  end

  def test_parse_sentence()

    sentence = Parser.parse_sentence([['stop', 'the'],
                                      ['noun', 'princess'],
                                      ['verb', 'left'],
                                      ['stop', 'the'],
                                      ['noun', 'pizza'],
                                      ['noun', 'shop']])
    assert_equal("princess", sentence.subject)
    assert_equal("left", sentence.verb)
    assert_equal("pizza", sentence.object)

    result = Parser.parse_sentence([['verb', 'lost'],
                                    ['stop', 'the'],
                                    ['noun', 'sight']])

    assert_equal("player", result.subject)
    assert_equal("lost", result.verb)
    assert_equal("sight", result.object)
  end

end
