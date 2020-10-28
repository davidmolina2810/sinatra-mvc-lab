require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
    @string = params[:user_phrase]
    pig = PigLatinizer.new
    @pig_string = pig.piglatinize(@string)

    erb :piglatinize
  end

end