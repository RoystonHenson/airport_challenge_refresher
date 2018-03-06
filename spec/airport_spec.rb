require 'airport'

describe Airport do
  let(:plane) { double('plane') }

  describe '#initialize' do
    it 'initialises with empty bays' do
      expect(subject.bays).to eq([])
    end
  end

  describe '#land' do
    context 'when weather is sunny' do
      it 'lands a plane at the airport' do
        allow(subject).to receive(:stormy?).and_return(false)
        expect(subject.land(plane)).to eq(plane)
      end
    end

    context 'when weather is stormy' do
      it 'it raises error' do
        allow(subject).to receive(:stormy?).and_return(true)
        expect { subject.land(plane) }.to raise_error('It is too stormy to land.')
      end
    end
  end

  describe '#take_off' do
    context 'when weather is sunny' do
      it 'plane takes off' do
        allow(subject).to receive(:stormy?).and_return(false)
        expect(subject.take_off(plane)).to eq(plane)
      end
    end

    context 'when weather is stormy' do
      it 'raises error' do
        allow(subject).to receive(:stormy?).and_return(true)
        expect { subject.take_off(plane) }.to raise_error('It is too stormy to take off.')
      end
    end
  end
end
