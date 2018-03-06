require 'plane'

describe Plane do
  describe '#initialize' do
    it 'initialises with airbourne state true' do
      expect(subject.airbourne).to eq(true)
    end
  end
end
