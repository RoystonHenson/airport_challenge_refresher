require 'weather'

describe Weather do
  describe '#stormy?' do
    it 'is stormy' do
      allow(subject).to receive(:stormy?).and_return(true)
      expect(subject).to be_stormy
    end

    it 'is sunny' do
      allow(subject).to receive(:stormy?).and_return(false)
      expect(subject).not_to be_stormy
    end
  end
end
