class Weather
  attr_reader :stormy

  def initialize
    @stormy = false
  end

  def stormy?
    random_stormy_generator
  end

  private

  def random_stormy_generator
    rand(10) > 5 ? @stormy = true : @stormy = false
  end
end
