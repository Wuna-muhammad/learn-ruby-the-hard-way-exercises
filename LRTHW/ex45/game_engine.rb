# Game engine.
class Game_Engine
  # Function initialize takes places variable.
  def initialize(places)
    @places = places
  end

  # Function needed to play game.
  # Runs all the scene switching.
  def play()
    # The opening scene.
    current_scene = @places.opening_scene()
    # Declares ending scene.
    ending_scene = @places.next_scene('finish')

    # If the scene of player is not the last scene
    # allows player to enter to antoher scene.
    while current_scene != ending_scene
      next_scene_name = current_scene.enter()
      current_scene = @places.next_scene(next_scene_name)
    end

    # Runs the current scene object.
    current_scene.enter()
  end
end

# Game map with all the scenes.
class Map
  # Order of all game scenes.
  @@scenes = {
    'ground' => Ground.new(),
    'park' => Park.new(),
    'taxi' => Taxi.new(),
    'hotel' => Hotel.new(),
    'booking_stand' => BookingStand.new(),
    'finish' => FinishScene.new()
  }

  # initialize function takes start_scene.
  def initialize(start_scene)
    @start_scene = start_scene
  end

  # The next scene function which calls next scene by the name.
  def next_scene(scene_name)
    new_scene = @@scenes[scene_name]
    return new_scene
  end

  # The starting scene of the game.
  def opening_scene()
    return next_scene(@start_scene)
  end
end
