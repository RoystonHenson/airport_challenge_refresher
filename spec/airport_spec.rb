require 'airport'

describe Airport do
  describe '#land' do
    it 'lands a plane at the airport' do
      plane = 'plane'
      expect(subject.land(plane)).to eq('plane')
    end
  end
end
