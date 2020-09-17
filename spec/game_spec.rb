require 'game'
require 'player'
describe Game do 
  it {is_expected.to respond_to(:attack)}

  describe "#attack" do

  let(:player_double) { double :player }
    it "can attack a player" do
      expect(player_double).to receive(:be_attacked)
      expect(subject.attack(player_double))
    end
    it "it takes ten hp off the player" do
      expect { subject.attack(player_double) }.to change(player_double.hp).by(-Player::DEFAULT_ATTACK)
    end

  end

end