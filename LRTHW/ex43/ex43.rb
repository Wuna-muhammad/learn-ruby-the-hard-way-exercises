## Scene class from which all other scenes are inherited.
class Scene
  def enter()
    puts "This scene is not for direct usage. Subclass scene and implement enter()."
    exit(1)
  end
end

## Engine of the game.
class Engine

  # initialize takes scene_map parameter.
  def initialize(scene_map)
    @scene_map = scene_map
  end

  # Gets the scene from scene_map
  def play()
    puts "Press enter to start game."
    current_scene = @scene_map.opening_scene()
    # Last winning scene.
    last_scene = @scene_map.next_scene('finished')

    # While called scene is not last keeps playing.
    while current_scene != last_scene
      # Enter function on current_scene.
      next_scene_name = current_scene.enter()
      # current_scene is instance of next_scene.
      current_scene = @scene_map.next_scene(next_scene_name)
    end

  end
end

# Class for game over.
class Death < Scene

  @@lost = [
    "You lost the game.",
    "It happens.",
    "Try one more time.",
    "Maybe you can win if you try one more.",
  ]

  def enter()
    # Chooses random string.
    puts @@lost[rand(0..3)]
    exit(1)
  end
end

# Main game scene. Game starts here.
# Player sees Gothons and must take action.
# User types what action he/she chooses.
class CentralCorridor < Scene

  def enter()
    puts "The Gothons of Planet Percial #25 have invaded your ship and destroyed"
    puts "your entire crew.  You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
    puts "flowing around his hate filled body.  He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you."
    # List of recommended unser input commands.
    puts "Possible options:"
    puts "\t shoot!"
    puts "\t dodge!"
    puts "\t tell a joke"

    print "> "

    # Gets input from user.
    action = $stdin.gets.chomp

    if action.include?("shoot!") || action.include?("shoot")
      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return 'death'

    elsif action.include?("dodge!") || action.include?("dodge")
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return 'death'

    elsif action.include?("tell a joke") || action.include?("joke")
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end

  end
end

# Scene with code bomb guessing.
class LaserWeaponArmory < Scene

  def enter()
    puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb.  The code is 3 digits."

    # code generates 3 digit number which unlocks bomb.
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    # Takes input from user.
    guess = $stdin.gets.chomp
    # Cheating option using if.
    guess = code if guess == "cheating"
    # First guess.
    guesses = 1

    # if the guess is missed user have 9 more trys.
    while guess != code && guesses < 10
      puts "BZZZEDDD"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    # If user guesses number he goes to the_bridge scene.
    if guess == code
        puts "The container clicks open and the seal break, letting gas out."
        puts "You grab the neutron bomb and run as fast as you can to the"
        puts "bridge where you must place it in the right spot."
        return 'the_bridge'
    # If user not guesses code he dies.
    else
        puts "The lock buzzes one last time and then you hear a sickening"
        puts "melting sound as the mechanism is fused together."
        puts "You decide to sit there, and finally the Gothons blow up the"
        puts "ship from their ship and you die."
        return 'death'
    end

  end
end

# Scene with trowing the bomb.
class TheBridge < Scene

  def enter()
    puts "You burst onto the Bridge with the netron bomb"
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off."
    print "> "

    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts "In a panic you throw the bomb."
    end

  end
end

class EscapePod < Scene
  def enter()
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take?"

    # Calculates one random number from 1 to 5 of good escape pod.
    good_pod = rand(1..5)

    # User guesses which pod works.
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    # If user fails to guess.
    if guess != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."

      return 'death'
    # If guess is true.
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"

      return 'finished'
    end
  end
end

# Finish scene.
class Finished < Scene
  def enter()
    puts "You won! Good job!"
  end
end

# Game map.
class Map
  # All possoble optins which are generated.
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

# Inherits game map from Map class.
a_map = Map.new('central_corridor')
# Inherits game engine from engine class.
a_game = Engine.new(a_map)
# Runs game.
a_game.play()
