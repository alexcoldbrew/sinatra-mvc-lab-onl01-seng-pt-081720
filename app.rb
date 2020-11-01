require_relative 'config/environment'

class App < Sinatra::Base

    # get request '/''
    get '/' do
        erb :user_input
    end

    # create an instance of the PigLatinizer class to
    # convert your user input to Pig Latin

    # Use ERB within a new view to display the
    # final pig latin string to the user
    post '/piglatinize' do
        @text = params[:user_phrase]
        @piglatinizer = PigLatinizer.new
        erb :piglatinize
    end

end