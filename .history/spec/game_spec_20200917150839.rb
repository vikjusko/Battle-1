require 'game'
require 'player'
describe Game do 
  subject(:game) { described_class.new }
  let(:player_double) { double :player }
  let(:player_double1) { double :player }

  describe "#attack" do
    it "can attack a player" do
      expect(player_double).to receive(:be_attacked)
      game.attack(player_double)
    end

    it "it takes ten hp off the player" do
      you = Player.new 
      expect{ game.attack(you) }.to change{ you.hp }.by(-10)
    end

  end

end