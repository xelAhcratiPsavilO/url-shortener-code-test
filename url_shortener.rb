require 'sinatra/base'

class URL_Shortener < Sinatra::Base
  get '/' do
    'Hello There!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
