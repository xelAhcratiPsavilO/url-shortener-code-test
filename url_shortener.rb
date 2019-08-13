require 'securerandom'
require 'sinatra/base'

class URL_Shortener < Sinatra::Base
  get '/' do
    erb :landing_page
  end

  post '/' do
    @url = params[:url]
    @short_url = shorten_url()
    erb :results_page
  end

  def shorten_url
    "http://localhost:9292/" + SecureRandom.urlsafe_base64(6)
  end
end
