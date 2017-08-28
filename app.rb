require 'pry'
require_relative 'config/environment'
require 'shotgun'

class App < Sinatra::Base

  get '/' do
    "Hello, World!"
  end

  get '/name' do
    @name = params[:name]
    # binding.pry
    "My name is #{@name}"
  end

  get '/hometown' do
    @hometown = params[:hometown]
    "My hometown is #{@hometown}"
  end

  get '/favorite-song' do
    @favorite_song = params[:favorite_song]
    "My favorite song is #{@favorite_song}"
  end

end
