require 'Player'
describe Player do
    it "returns it's name" do
    expect(subject.name).to eq (subject.name)
    end

    it {is_expected.to respond_to(:be_attacked)}

    it "linus loses health when he gets hit" do
        expect{subject.be_attacked}.to change{subject.hp}.by(-Player::DEFAULT_ATTACK)
    end
end