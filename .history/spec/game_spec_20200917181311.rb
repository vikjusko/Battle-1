require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#attack" do
    it "can attack a player" do
      expect(player_1).to receive(:be_attacked)
      game.attack(player_1)
    end
  
  #  it "it takes ten hp off the player" do
  #   expect(player_1).to receive(:be_attacked).and change(player_1.hp).by(-10)
  #  end
end

it "contains an instance of 2 players" do
  expect(game.players).to be_an_instance_of(Array)
end

it "has a current player that is initially defined as player2" do
  expect(game.current_player).to eq player_2
end

  describe "switch turns" do 
    it "switches turnes after the attack" do 
      expect{ game.switch_turns }.to change{ game.current_player}.to(player_1)
    end 
  end 

end