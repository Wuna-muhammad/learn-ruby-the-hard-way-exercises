require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "public"
set :views, "views"

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
