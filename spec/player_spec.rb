require 'Player'
describe Player do
    it "returns it's name" do
    expect(subject.say_name).to eq (subject.name)
    end
end