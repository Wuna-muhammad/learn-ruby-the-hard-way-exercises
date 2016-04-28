#coding -*- utf-8 -*-

# Game from exercise No. 45 "Learn Ruby The Hard Way"
# Done by Bernard Pietraga

# All required files to run the game.
require './ground.rb'
require './park.rb'
require './taxi.rb'
require './hotel.rb'
require './booking_stand.rb'
require './finish.rb'
require './game_engine.rb'

# Creates game_scene_map object with Ground start scene.
game_scene_map = Map.new('ground')
# Creates game_play_engine object with game map as argument.
game_play_engine = Game_Engine.new(game_scene_map)
# Runs whole game by play method in game_play_engine object.
game_play_engine.play()
