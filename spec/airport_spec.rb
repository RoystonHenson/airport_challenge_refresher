require 'airport'

describe Airport do
  let(:plane) { double('plane') }
  describe '#land' do
    it 'lands a plane at the airport' do
      expect(subject.land(plane)).to eq(plane)
    end
  end

  describe '#take_off' do
    it 'plane takes off from the airport' do
      expect(subject.take_off(plane)).to eq(plane)
    end
  end
end
