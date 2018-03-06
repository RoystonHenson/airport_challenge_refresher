require 'airport'

describe Airport do
  let(:plane) { double('plane') }
  # let(:weather) { double('weather', stormy: false) }

  describe '#land' do
    it 'lands a plane at the airport' do
      expect(subject.land(plane)).to eq(plane)
    end
  end

  describe '#take_off' do
    context 'when weather is sunny' do
      it 'plane takes off' do
        allow(subject).to receive(:take_off).and_return(plane)
        expect(subject.take_off(plane)).to eq(plane)
      end
    end

    context 'when weather is stormy' do
      it 'prevents plane from taking off' do
        expect { subject.take_off(plane) }.to raise_error('It is too stormy to take off.')
      end
    end
  end
end
