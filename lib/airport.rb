require_relative 'weather'

class Airport
  attr_reader :bays, :capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity=DEFAULT_CAPACITY)
      @bays = []
      @capacity = capacity
  end

  def land(plane)
    raise 'It is too stormy to land.' if stormy?
    raise 'The airport is full.' if full?
    bays << plane
  end

  def take_off(plane)
    raise 'It is too stormy to take off.' if stormy?
    confirm_take_off
    plane
  end

  private

  def stormy?
    Weather.new.is_stormy? == true
  end

  def confirm_take_off
    puts 'The plane has left the airport.'
  end

  def full?
    bays.count >= capacity
  end
end
