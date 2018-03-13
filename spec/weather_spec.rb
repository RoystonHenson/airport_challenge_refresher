require 'weather'

describe Weather do
  describe '#is_stormy?' do
    it 'is stormy' do
      allow(subject).to receive(:random_boolean_generator).and_return(true)
      expect(subject.is_stormy?).to be(true)
    end

    it 'is sunny' do
      allow(subject).to receive(:random_boolean_generator).and_return(false)
      expect(subject.is_stormy?).to be(false)
    end
  end
end
