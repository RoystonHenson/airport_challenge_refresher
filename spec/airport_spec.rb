require 'airport'

describe Airport do
  let(:plane) { double('plane') }

  describe '#initialize' do
    it 'initialises with empty bays' do
      expect(subject.bays).to eq([])
    end

    context 'user does not set capacity' do
      it 'has a default capacity' do
        expect(subject.capacity).to eq(Airport::DEFAULT_CAPACITY)
      end
    end

    context 'user sets capacity' do
      subject { Airport.new(20) }
      it 'has a user set capacity' do
        expect(subject.capacity).to eq(20)
      end
    end

  end

  describe '#land' do
    context 'when weather is sunny' do
      it 'lands a plane at the airport' do
        allow(subject).to receive(:stormy?).and_return(false)
        subject.land(plane)
        expect(subject.bays).to eq([plane])
      end

      it 'raises error when airport is full' do
        allow(subject).to receive(:stormy?).and_return(false)
        Airport::DEFAULT_CAPACITY.times do
          subject.land(double('plane'))
        end
        expect { subject.land(plane) }.to raise_error('The airport is full.')
      end

      it 'prevents plane landing when already landed' do
        subject.land(plane)
        expect { subject.land(plane) }.to raise_error('This plane has already landed.')
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
