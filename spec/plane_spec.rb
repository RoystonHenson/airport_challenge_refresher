require 'plane'

describe Plane do
  describe '#initialize' do
    it 'initialises with airbourne state true' do
      expect(subject.airbourne).to eq(true)
    end
  end

  describe '#landed' do
    it 'sets airbourne to false' do
      subject.landed
      expect(subject.airbourne).to eq(false)
    end
  end
end
