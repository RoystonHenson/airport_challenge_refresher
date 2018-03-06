class Weather

  def is_stormy?
    random_boolean_generator
  end

  private

  def random_boolean_generator
    rand(10) > 9 ? true : false
  end
end
