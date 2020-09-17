require './lib/Player.rb'
class Game
  attr_reader :players, :current_player, :losing_message
    def initialize(player_1 , player_2)
      @players = [player_1, player_2]
      @current_player = player_2

    end

    def attack(player)
      player.be_attacked
    end

    def switch_turns
      @current_player = opponent
    end 

    def opponent
      players.select { |player| player != @current_player }.first 
    end 

    def lost?
      opponent.hp.zero?
    end

    def set_losing_message
        @losing_message = "#{opponent.name} lost" if lost?
    end
    

end