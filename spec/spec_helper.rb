ENV['RACK_ENV'] = 'test'

# require Sinatra app file
require File.join(File.dirname(__FILE__), '..', 'url_shortener.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

# tell Capybara about app class
Capybara.app = URL_Shortener
