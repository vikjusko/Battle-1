require "sinatra/base"
require "./lib/Player.rb"
require './lib/game.rb'

class Battle < Sinatra::Base
 
  enable :sessions
  get "/" do
    erb(:index)
  end

  post "/names" do
   # $player_1 = 
    $player_2 = Player.new(params[:player_2])
    $game = Game.new(Player.new(params[:player_1]), $player_2)
    redirect '/play'
  end

  get '/play' do

  #  $game = Game.new($player_1, $player_2)
    erb(:play)
  end

  get '/player_2_attack' do
    $game.attack($game.players[0])
    $game.switch_turns
    erb(:player_2_attack)
  end

  run! if app_file == $0

end
