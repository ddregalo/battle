require 'session'

describe Session do
  let(:player_1) { double 'player_1' }
  let(:player_2) { double 'player_2', reduce_points: 10 }
  subject(:subject) { described_class.new(player_1, player_2) }
  it 'should initialize with two instances of the player class' do
    expect(subject.player_1).to eq player_1
    expect(subject.player_2).to eq player_2
  end

  it 'should initialize turn with player_1' do
    expect(subject.turn).to eq subject.player_1
  end

  describe '#paint' do
    it 'should run the paint method on a player' do
      expect(player_2).to receive(:reduce_points)
      subject.paint(player_2)
    end
  end

  describe '#switch_turns' do
    it 'should swtich player turns after paint method' do
      subject.switch_turns
      expect(subject.turn).to eq (player_2)
    end
  end


end
