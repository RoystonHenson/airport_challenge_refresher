require 'plane'

describe Plane do
  let(:airport) { double('airport') }

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

  describe '#departed' do
    it 'sets airbourne to true' do
      subject.departed
      expect(subject.departed).to eq(true)
    end
  end
end
