require 'securerandom'
require 'sinatra/base'

class URL_Shortener < Sinatra::Base

enable :sessions

  get '/' do
    erb :landing_page
  end

  post '/' do
    @url = complete_url(params[:url])
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

  def complete_url(url_inputed)
    if (url_inputed.include? "http://") || (url_inputed.include? "https://")
      url_inputed
    else
      url_inputed = "http://" + url_inputed
    end
  end

end
