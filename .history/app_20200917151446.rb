require "sinatra/base"
require "./lib/Player.rb"
require './lib/game.rb'

class Battle < Sinatra::Base
 
  enable :sessions
  get "/" do
    erb(:index)
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_2_name = $player_2.name
    @player_1_name = $player_1.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    $game = Game.new
    erb(:play)
  end

  get '/player_2_attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.atack(player_2)
    erb(:player_2_attack)
  end

  run! if app_file == $0

end
