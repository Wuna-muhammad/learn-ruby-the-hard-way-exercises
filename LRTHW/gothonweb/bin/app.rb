require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "public"
set :views, "views"
# Enables sessins in sinatra. Allows to store user state.
enable :sessions
# Makes signed cookie.
set :session_secret, 'super duper secret'

get '/' do
  return 'Hello world'
end

get '/hello/' do
  erb :hello_form
end

post '/hello/' do
  greeting = params[:greeting] || "Hi there"
  name = params[:name]  || "Nobody"

  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end

# Redirect url to html file.
get '/howdy' do
  redirect "./howdy.html"
end

# Dynamicly generates content.
# The friend is parameter passed to sinatra.
# Framework generates unique page for every argument.
# Ie. http://localhost:8080/hi/Bernard
get '/hi/:friend' do
  return "Hi #{params['friend']}, you are sinatra friend."
end

# Photo upload page.
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
