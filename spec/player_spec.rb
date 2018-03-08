require 'player'

describe Player do
  subject(:samo) { Player.new("Samo") }
  subject(:rothko) { Player.new("Rothko") }

  it 'return the player name' do
    expect(samo.name).to eq "Samo"
    expect(rothko.name).to eq "Rothko"
  end

  describe '#paint' do
    it 'should call the reduce_points method on opponent' do
      expect(rothko).to receive(:reduce_points)
      samo.paint(rothko)
    end
  end

  describe '#reduce_points' do
    it 'should reduce paint points by 10' do
      samo.paint(rothko)
      expect(rothko.paint_points).to eq 90
    end
  end
end
