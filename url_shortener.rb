require 'securerandom'
require 'sinatra/base'

class URL_Shortener < Sinatra::Base

enable :sessions

  get '/' do
    erb :landing_page
  end

  post '/' do
    @url = params[:url]
    session[:url] = @url
    @short_url = shorten_url()
    erb :results_page
  end

  get '/:url' do
    redirect session[:url]
  end

  def shorten_url
    "http://localhost:9292/" + SecureRandom.urlsafe_base64(6)
  end
end
