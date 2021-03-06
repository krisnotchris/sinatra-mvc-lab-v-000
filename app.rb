require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pl = PigLatinizer.new
    #binding.pry
    @pig_text = @pl.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end