class Plane
  attr_reader :airbourne

  def initialize
    @airbourne = true
  end

  def landed
    @airbourne = false
  end

  def departed
    @airbourne = true
  end
end
