require_relative 'weather'

class Airport

  def land(plane)
    plane
  end

  def take_off(plane)
    raise 'It is too stormy to take off.' if stormy? == true
    confirm_take_off
    plane
  end

  private

  def stormy?
    Weather.new.stormy?
  end

  def confirm_take_off
    puts 'The plane has left the airport.'
  end
end
