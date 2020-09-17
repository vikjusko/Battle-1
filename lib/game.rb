require './lib/Player.rb'
class Game
  attr_reader :player_1, :player_2, :players
    def initialize(player_1 , player_2)
      @players = [player_1, player_2]
    end

    def attack(player)
      player.be_attacked
    end

end