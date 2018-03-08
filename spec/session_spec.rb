require 'session'

describe Session do
  it 'should run the paint method on a player' do
    player = double
    expect(player).to receive(:reduce_points)
    subject.paint(player)
  end
end
