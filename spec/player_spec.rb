require 'player'

describe Player do
  subject(:samo) { Player.new("Samo") }
  subject(:rothko) { Player.new("Rothko") }

  it 'return the player name' do
    expect(samo.name).to eq "Samo"
    expect(rothko.name).to eq "Rothko"
  end

  it 'initializes both players with 100 paint points' do
    expect(samo.paint_points).to eq 100
    expect(samo.paint_points).to eq 100
  end

  describe '#reduce_points' do
    it 'should reduce paint points by 10' do
      rothko.reduce_points
      expect(rothko.paint_points).to eq 90
    end
  end
end
