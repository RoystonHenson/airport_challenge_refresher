require_relative 'weather'

class Airport

  def land(plane)
    raise 'It is too stormy to land.' if stormy?
    plane
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
end
