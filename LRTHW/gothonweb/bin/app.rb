# The main app file form gothonweb game.

# Reuired gems for app to work.
require 'sinatra'
require './lib/gothonweb/map.rb'
require './lib/error_handling.rb'
require './lib/models/user.rb'

require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

# sinatra configuration.
set :port, 8080
set :static, true
set :public_folder, "public"
set :views, "views"
# Enables sessins in sinatra. Allows to store user state.
enable :sessions
# Makes signed cookie.
set :session_secret, 'super duper secret'

## Game code.
get '/' do
  session[:room] = 'START'
  redirect to('/game')
end

get '/game' do
  room = Map::load_room(session)

  if room
    erb :show_room, :locals => {:room => room}
  else
    erb :you_died
  end
end

post '/game' do
  room = Map::load_room(session)
  action = params[:action]

  if room
    next_room = room.go(action) || room.go("*")

    if next_room
      Map::save_room(session, next_room)
    end

    redirect to('/game')
  else
    erb :you_died
  end
end

get '/users' do
  @users = User.all
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :show
end

## Authentication.
# signup form
get '/signup' do
  erb :signup_form
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user_id
    redirect('/game/#[game.id]')
  else
    session[:error] = user.error.messages
    redirect('/signup')
  end
end
# login form

get '/login' do
  erb :login_form
end

post '/login' do
  user = User.find_by(name: params[:user][:name]).try(:authenticate,
                                                      params[:user][:password])
  if user
    session[:user_id] = user.id
    redirect('/')
  else
    set_error("Username or password is incorrect or doesn't exist.")
    redirect('/login')
  end
end


## Misc pages, from book exercises not connected with game.
# Redirect url to html file.
get '/howdy' do
  redirect "./howdy.html"
end

# Dynamically generates content.
# The friend is parameter passed to sinatra.
# Framework generates unique page for every argument.
# Ie. http://localhost:8080/hi/Bernard
get '/hi/:friend' do
  return "Hi #{params['friend']}, you are sinatra friend."
end

## Photo upload page.
get '/photo/' do
  pictures = load_pictures
  # calls erb code files.
  erb :photo_upload, :locals => {'pictures' => pictures}
end

# Loading uploaded photos
def load_pictures
  # Sets location and format for saving.
  return Dir.glob("public/images/*.{jpg,jpeg,png,gif}")
end

post '/photo/' do
  # checks what image is saved.
  uploaded_file = params[:myfile]
  puts "The file object is #{uploaded_file}"
  # Makes new empty file in pubilc/images.
  # Add filename of uploaded file to new file.
  target = open('./public/images/' + uploaded_file[:filename], "w")
  # Write data to empty file from uploaded image.
  target.write(uploaded_file[:tempfile].read)
  # Closes everything after writing is complete.
  target.close()

  pictures = load_pictures
  erb :photo_upload, :locals => {'pictures' => pictures}
end
