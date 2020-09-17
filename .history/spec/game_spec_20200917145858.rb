require 'game'
require 'player'
describe Game do 
  let(:player_double) { double :player }

  describe "#attack" do
    it "can attack a player" do
      expect(player_double).to receive(:be_attacked)
      expect(subject.attack(player_double))
    end
    it "it takes ten hp off the player" do
      expect { subject.attack(player_double) }.to change(player_double.hp).by(-Player::DEFAULT_ATTACK)
    end

  end

end