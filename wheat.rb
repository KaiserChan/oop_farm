require_relative 'field'

class Wheat < Field

  def initialize(field_type, hectares)
    super(field_type, hectares)
    @food_per_hectare = 30
    @total_food
  end

  def field_type
    super
  end

  def field_size
    super
  end

  def food_per_hectare
    @food_per_hectare
  end

  def total_food
    @total_food = field_size * food_per_hectare
    return @total_food
  end

end
