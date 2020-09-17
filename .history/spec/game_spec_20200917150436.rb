require 'game'
require 'player'
describe Game do 
  subject(:game) { described_class.new }
  let(:player_double) { double :player }
  let(:player_double1) { double :player }

  describe "#attack" do
    it "can attack a player" do
      expect(player_double).to receive(:be_attacked)
      expect(game.attack(player_double))
    end

    it "it takes ten hp off the player" do
      expect { game.attack(player_double) }.to change{ player_double.hp }.by(-10)
    end

  end

end