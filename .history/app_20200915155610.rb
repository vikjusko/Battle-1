require File.join(File.dirname(__FILE__), "..", "app.rb")
require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
Capybara.app = Battle

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
	end
  run! if app_file == $0
end