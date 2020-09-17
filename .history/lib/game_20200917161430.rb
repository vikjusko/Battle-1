require './lib/Player.rb'
class Game
  attr_reader :player_1, :player_2, :players, :current_player
    def initialize(player_1 , player_2)
      @players = [player_1, player_2]
      @current_player = player_2
    end

    def attack(player)
      player.be_attacked
    end

    def switch_turs

    end 

    def opponent
      (@players -@current_player).first 
    end 

end