class Weather

  def stormy?
    random_boolean_generator
  end

  private

  def random_boolean_generator
    rand(10) > 8 ? true : false
  end
end
