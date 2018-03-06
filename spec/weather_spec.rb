require 'weather'

describe Weather do
  describe '#initialize' do
   it 'initialises with stormy as false' do
     expect(subject.stormy).to eq(false)
   end
  end
end
