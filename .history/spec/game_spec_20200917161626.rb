require 'game'
require 'player'
describe Game do 
  subject(:game) { described_class.new(player_double, player_double1) }
  let(:player_double) { double :player }
  let(:player_double1) { double :player }

  it "contains an instance of 2 players" do
    expect(subject.players).to be_an_instance_of(Array)
  end

  it "has a current player that is initially defined as player2" do
    expect(game.current_player).to eq player_double1
  end 

  describe "#attack" do
    it "can attack a player" do
      expect(player_double).to receive(:be_attacked)
      game.attack(player_double)
    end
  #  it "it takes ten hp off the player" do
  #    you = Person.new
  #    expect{ game.attack(player_double) }.to change { player_double.hp }.by(-10)
  #  end
end

end