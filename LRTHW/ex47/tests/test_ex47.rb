#coding -*- utf-8 -*-

# Test from exercise No. 47 from Learn Ruby The Hard Way
# Done by Bernard Pietraga

require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

  def test_room()
      gold = Room.new("GoldRoom",
                  """ This room has gold in it you can grab. There's a
             door to the north.""")
             assert_equal("GoldRoom", gold.name)
             assert_equal({}, gold.paths)
  end

  def test_room_paths()
      center = Room.new("Center", "Test room in the center.")
      north = Room.new("North", "Test room in the north.")
      south = Room.new("South", "Test room in the south.")

      center.add_paths({'north'=> north, 'south'=> south})
      assert_equal(north, center.go('north'))
      assert_equal(south, center.go('south'))
  end

  def test_map()
      start = Room.new("Start", "You can go west and down a hole.")
      west = Room.new("Trees", "There are trees here, you can go east.")
      down = Room.new("Dungeon", "It's dark down here, you can go up.")

      start.add_paths({'west'=> west, 'down'=> down})
      west.add_paths({'east'=> start})
      down.add_paths({'up'=> start})

      assert_equal(west, start.go('west'))
      assert_equal(start, start.go('west').go('east'))
      assert_equal(start, start.go('down').go('up'))
  end

  # Study drill
  def test_ex45game
      # Creates room obejcts.
      ground = Room.new("Ground", "You wake up on ground.")
      park = Room.new("Park", "You look around.")
      taxi = Room.new("Taxi", "You ask driver and go with taxi.")
      hotel = Room.new("hotel", "You see hotel boy.")
      booking_stand = Room.new("BookingStand", "You speak with hotel boy.")
      finish = Room.new("Finish", "You  didn't understand what happened.")

      # Shows possible game paths.
      # From ground player can go to park and ground.
      ground.add_paths({'park'=> park, 'ground'=> ground})
      # From park player can go to park, taxi and hotel.
      park.add_paths({'park'=> park,  'taxi'=> taxi, 'hotel' => hotel})
      # From taxi player can go to taxi and hotel.
      taxi.add_paths({'taxi'=> taxi, 'hotel'=> hotel})
      # From hotel player can go to hotel and booking_stand.
      hotel.add_paths({'hotel'=> hotel, 'booking_stand'=> booking_stand})
      # From booking_stand player can go to booking_stand and finish.
      booking_stand.add_paths({'booking_stand'=> booking_stand, 'finish'=> finish})

      # Tests the route from ground to park to taxi
      # to hotel to booking stand to finish.
      assert_equal(finish, ground
                          .go('park')
                          .go('taxi')
                          .go('hotel')
                          .go('booking_stand')
                          .go('finish'))
      # Tests the routes from ground to park
      # to hotel to booking stand to finish.
      assert_equal(finish, ground
                          .go('park')
                          .go('hotel')
                          .go('booking_stand')
                          .go('finish'))
  end

end
