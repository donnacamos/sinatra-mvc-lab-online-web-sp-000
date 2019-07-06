require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = PigLatinizer.new
    @piglatin = word.to_pig_latin(params[:user_phrase])
    erb :results
  end
end