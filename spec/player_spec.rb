require 'player'

describe Player do
  it 'return the player name' do
    test_name = Player.new("Samo")
    expect(test_name.name).to eq "Samo"
  end
end
